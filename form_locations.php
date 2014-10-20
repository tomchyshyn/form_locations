<?php

const STATE_START               = 0;
const STATE_DB_CONNECTION       = 1;
const STATE_DATA_SELECTION      = 2;
const STATE_RESOLVE_CONFLICTS   = 3;

const ERR_MYSQL_CONNECT         = 'err_mysql_0';
const ERR_MYSQL_SELECT_DB       = 'err_mysql_1';
const ERR_MYSQL_QUERY           = 'err_mysql_2';

const ERR_REQUIRED_FIELD_EMPTY  = 'err_field_0';

const WARN_ARRAY_MERGE_CONFLICT = 'warn_conflict_0';

const ARRAY_MERGE_CONFLICT_RESOLVED = 'conflict_resolved_0';

const RESULT_OK                 = 'ok';

const ARRAY_PATH_COUNTRIES      = 'arrays/Countries.php';
const ARRAY_PATH_STATES         = 'arrays/States.php';

const QUERY_COUNTRIES_OC        = "select
  c.name as c_name,
  c.iso_code_2 as c_iso2,
  c.iso_code_3 as c_iso3
from oc_country as c";

const QUERY_STATES_OC           = "select
  c.iso_code_2 as c_iso2,
  s.name as s_name,
  s.code as s_iso
from oc_zone as s
inner join oc_country as c
  on s.country_id = c.country_id";

function start($state)
{
  switch ($state) {
    case STATE_START:
    case STATE_DB_CONNECTION: print_form($state);
      return;
  }
  process();
}

/**
 * @return bool
 */
function check_ready_state()
{
  session_start();

  $state = STATE_START;

  if (isset_fields(array('db_host','db_user', 'db_name'))){
    if (connect_db() != RESULT_OK) {
      return $state;
    }
    if (isset($_POST['db_pass'])) $_SESSION['db_pass'] = $_POST['db_pass'];
    $state = STATE_DB_CONNECTION;
  }

  if (isset_fields(array('make_arr', 'query'))) {
    if (connect_db() != RESULT_OK) {
      return $state;
    }
    if (isset($_POST['query']) || isset_fields('resolve_conflicts', false)) $state = STATE_DATA_SELECTION;
  }

  return $state;
}

function isset_fields($fields, $keep_in_session = true)
{
  if (!is_array($fields)) {
    $fields = array($fields);
  }

  foreach ($fields as $field) {
    if (is_empty($_POST[$field]) && is_empty($_SESSION[$field])) {
      return false;
    }
    if (isset($_POST[$field]) && $keep_in_session) {
      $_SESSION[$field] = $_POST[$field];
    }
  }

  return true;
}

function is_empty($value)
{
  return !isset($value) || trim($value) == '';
}

function connect_db()
{
  $host = get_value('db_host');
  $user = get_value('db_user');
  $pass = get_value('db_pass');
  $db   = get_value('db_name');

  if (!mysql_connect($host,$user, $pass)) {
    return ERR_MYSQL_CONNECT;
  }

  if (!mysql_select_db($db)) {
    return ERR_MYSQL_SELECT_DB;
  }

  return RESULT_OK;
}

function get_value($field, $default = '')
{
  return !is_empty($_POST[$field]) ? $_POST[$field] : (!is_empty($_SESSION[$field]) ? $_SESSION[$field] : $default);
}

function print_form($state, $info='', $data = null)
{
?>
  <style>
    body {width: 100%; text-align: center; margin: 0; padding: 0;}
    form {text-align: center; width: 550px; border: solid dimgray 1px; border-radius: 10px; padding: 10px; display: inline-block; margin: 30px;}
    .label {width: 110px; display: inline-block; text-align: right; margin: 0 3px; color: #393959;}
    .required::after {content: '*'; color: red;}
    .info {text-align: left; display: block; margin-left: 5px; color: gray;}
    .info > .info {display: block; margin-left: 30px;}
    textarea {display: inline-block; width: 500px; min-width: 500px; max-width: 500px; min-height: 300px; overflow: auto;}
    .conflicts {display: inline-block; width: 500px; min-width: 500px; max-width: 500px; min-height: 300px; max-height: 500px; overflow: auto; padding: 5px; border: solid dimgrey 1px; border-radius: 5px; text-align: left;}
    .conflict {display: block; border: solid silver 1px; text-align: left;}
    .conflict > .label {margin: 5px; display: block; width: 300px; text-align: left; font-weight: bold;}
    #counts {text-align: left; margin-left: 50px; margin-bottom: 5px;}
    #counts > span {display: block;}
  </style>

  <form method="post">
<?php
    echo $info;
    switch ($state) {
      case STATE_START: form_fields_db_access();
        break;
      case STATE_DB_CONNECTION: form_fields_data_selection();
        break;
      case STATE_RESOLVE_CONFLICTS: form_fields_conflict_resolve($data);
        break;
    }
?>
    <button type="submit" name="submit-state-<?php echo $state; ?>" id="submit-state-<?php echo $state; ?>">submit</button>
  </form>
<?php
}

function form_fields_db_access()
{
?>
  <h3>DB Access</h3>
  <p><span class="label required">host</span><input type="text" id="db_host" name="db_host" value="<?php echo get_value('db_name', 'localhost'); ?>" required="required"></p>
  <p><span class="label required">user</span><input type="text" id="db_user" name="db_user" value="<?php echo get_value('db_name', 'root'); ?>" required="required"></p>
  <p><span class="label">pass</span><input type="password" id="db_pass" name="db_pass"></p>
  <p><span class="label required">db name</span><input type="text" id="db_name" name="db_name" required="required" value="<?php echo get_value('db_name'); ?>"></p>
<?php
}

function form_fields_data_selection()
{
?>
  <h3>Query</h3>
  <p><span class="label required">db name</span><input type="text" id="db_name" name="db_name" required="required" value="<?php echo get_value('db_name'); ?>"></p>
  <p><span class="label required">make array of:</span>
    <input type="radio" id="make_arr_c" name="make_arr" required="required" value="countries" <?php if (get_value('make_arr') == 'countries') echo ' checked="checked" '; ?>>Countries
    <input type="radio" id="make_arr_s" name="make_arr" required="required" value="states" <?php if (get_value('make_arr') == 'states') echo ' checked="checked" '; ?>>States
  </p>
  <p><textarea id="query" name="query" required="required"><?php echo get_value('query'); ?></textarea></p>
  <p><input type="button" value="opencart" onclick="
  if (document.getElementById('make_arr_c').checked) {document.getElementById('query').value = 'select\n  c.name as c_name,\n  c.iso_code_2 as c_iso2,\n  c.iso_code_3 as c_iso3 \nfrom oc_country as c';}
  if (document.getElementById('make_arr_s').checked) {document.getElementById('query').value = 'select\n  c.iso_code_2 as c_iso2,\n  s.name as s_name,\n  s.code as s_iso\nfrom oc_zone as s\ninner join oc_country as c\n  on s.country_id = c.country_id';}
  "></p>
  <p><span class="info">required fields for:
      <span class="info">Countries: c_name, c_iso2, c_iso3</span>
      <span class="info">States: c_iso2, s_name, s_iso</span>
    </span></p>
<?php
}

function form_fields_conflict_resolve($conflict_array)
{
  if (!is_array($conflict_array) || empty($conflict_array)) return;
  echo '<div class="conflicts"><input type="hidden" id="resolve_conflicts" name="resolve_conflicts" value="resolve_conflicts">';
  foreach ($conflict_array as $key => $conflicts)
  {
    if (!is_array($conflicts)) {
      $conflicts = array($conflicts);
    }

    echo '<div class="conflict"><span class="label required">conflict for "'.$key.'"</span>';
    foreach ($conflicts as $id => $conflict) {
      echo '<pre><input type="radio" id="'.$key.'" name="'.$key.'" required="required" value="'.$id.'"'.($id == 0 ? ' checked="checked" ' : '').'>';
      print_r($conflict);
      echo '</pre>';
    }
    echo '</div>';
  }
  echo '</div>';
}

function process()
{
  $path = '';
  switch (get_value('make_arr')) {
    case 'countries' : $path = ARRAY_PATH_COUNTRIES;
      break;
    case 'states' : $path = ARRAY_PATH_STATES;
      break;
  }

  @include_once($path);

  if (!isset($array)) $array = array();

  $info = '<h3>Resolve Conflicts</h3><div id="counts"><span>source array count: '.count($array).'</span>';

  $query = prepare_sql_query(get_value('query'), 'query');

  $res = mysql_query($query);

  if (!$res) {
    return ERR_MYSQL_QUERY;
  }

  $conflict_array = array();

  while ($row = mysql_fetch_assoc($res)) {
    switch (get_value('make_arr')) {
      case 'countries' : make_counties_array_el($array, $conflict_array, $row);
        break;
      case 'states' : make_states_array_el($array, $conflict_array, $row);
        break;
    }
  }
  $info .= '<span>result array count: '.count($array).'</span>';
  $info .= '<span>conflicts count: '.count($conflict_array).'</span></div>';

  if (empty($conflict_array)) {
    save_array_into_file($path, $array);
  }

  print_form(STATE_RESOLVE_CONFLICTS, $info, $conflict_array);

  return RESULT_OK;
}

function prepare_sql_query($query, $save_into = '')
{
  $query = preg_replace("/;?(\-\-)?(delete)?(drop)?(insert)?(update)?/i","",$query);
  if ($save_into != '') $_SESSION[$save_into] = $query;

  return $query;
}

function make_counties_array_el(&$array, &$conflict_array, $row)
{
  if (!isset($row['c_name']) || !isset($row['c_iso2']) || !isset($row['c_iso3'])) {
    return ERR_REQUIRED_FIELD_EMPTY;
  }

  if (!isset($array[$row['c_iso2']])) {
    $array[$row['c_iso2']] = array($row['c_iso3'], $row['c_name'], 0);
    return RESULT_OK;
  }

  if ($array[$row['c_iso2']][0] != $row['c_iso3'] || $array[$row['c_iso2']][1] !=  $row['c_name']) {
    //array for resolve conflict
    $conflict_array[$row['c_iso2']][0] = array($array[$row['c_iso2']][0], $array[$row['c_iso2']][1], $array[$row['c_iso2']][2]);
    $conflict_array[$row['c_iso2']][1] = array($row['c_iso3'], $row['c_name'], $array[$row['c_iso2']][2]);

    if (isset($_POST[$row['c_iso2']])) {
      if (isset($conflict_array[$row['c_iso2']][$_POST[$row['c_iso2']]])) {
        $array[$row['c_iso2']] = $conflict_array[$row['c_iso2']][$_POST[$row['c_iso2']]];
        unset($conflict_array[$row['c_iso2']]);
        return ARRAY_MERGE_CONFLICT_RESOLVED;
      }
    }

    return WARN_ARRAY_MERGE_CONFLICT;
  }

  return RESULT_OK;
}

function make_states_array_el(&$array, &$conflict_array, $row)
{
  if (!isset($row['c_iso2']) || !isset($row['s_name']) || !isset($row['s_iso'])) {
    return ERR_REQUIRED_FIELD_EMPTY;
  }

  if (!isset($array[$row['c_iso2']][$row['s_iso']])) {
    $array[$row['c_iso2']][$row['s_iso']] = array($row['s_name']);
    return RESULT_OK;
  }

  if (!in_array($row['s_name'], $array[$row['c_iso2']][$row['s_iso']])) {
    $array[$row['c_iso2']][$row['s_iso']][] = $row['s_name'];
  }

  $array[$row['c_iso2']][$row['s_iso']] = array_unique($array[$row['c_iso2']][$row['s_iso']]);

  return RESULT_OK;
}

function save_array_into_file($path, $array)
{
  $handle = fopen($path, 'w');
  fwrite($handle,"<?php\n\n\$array = array(");
  foreach ($array as $key => $data) {
    $str = "\n  ".escape_str($key, "'")." => array(";
    if ($path == ARRAY_PATH_COUNTRIES) $str .= make_array_str_countries($data);
    elseif ($path == ARRAY_PATH_STATES) $str .= make_array_str_states($data);
    $str .= "),";
    fwrite($handle,$str);
  }
  fwrite($handle,"\n);");
  fclose($handle);
}

function make_array_str_countries($data) {
  return escape_str($data[0]).', '.escape_str($data[1]).', '.$data[2];
}

function make_array_str_states($data) {
  $str = "";
  foreach ($data as $key => $vals) {
    $str .= "\n    " . escape_str($key, "'") .' => array(';
    $tmp_str = '';
    foreach ($vals as $val) {
      $tmp_str .= ($tmp_str != '' ? ', ' : '') . escape_str($val);
    }
    $str .= $tmp_str . "),";
  }
 return $str."\n  ";
}

function escape_str($str, $quote = '"')
{
  return $quote.preg_replace("/".$quote."/","\\".$quote,$str).$quote;
}


start(check_ready_state());