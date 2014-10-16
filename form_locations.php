<?php

const STATE_START           = 0;
const STATE_DB_CONNECTION   = 1;
const STATE_DATA_SELECTION  = 2;

function start($state)
{
  switch ($state) {
    case STATE_START:
    case STATE_DB_CONNECTION: print_form($state);
      return;
  }
}

/**
 * @return bool
 */
function check_ready_state()
{
  session_start();

  $state = STATE_START;

  if (isset_fields(array('db_host','db_user'))){
    $state = STATE_DB_CONNECTION;
  }

  if (isset_fields(array('db_name', 'tbl_country', 'col_country', 'col_country_iso2', 'col_country_iso3'))) {
    $state = STATE_DATA_SELECTION;
  }

  return $state;
}

function isset_fields($fields)
{
  if (!is_array($fields)) {
    $fields = array($fields);
  }

  foreach ($fields as $field) {
    if (is_empty($_POST[$field]) && is_empty($_SESSION[$field]))
      return false;
  }

  return true;
}

function is_empty($value)
{
  return !isset($value) || trim($value) == '';
}

function print_form($state)
{
?>
  <style>
    form {text-align: center;}
    .label {width: 70px; display: inline-block; text-align: right; margin: 3px;}
    .required::after {content: '*'; color: red;}
  </style>

  <form method="post">
<?php
  switch ($state) {
    case STATE_START: form_fields_db_access();
      break;
    case STATE_DB_CONNECTION: form_fields_data_selection();
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
  <p><span class="label required">host</span><input type="text" id="db_host" name="db_host" value="localhost"></p>
  <p><span class="label required">user</span><input type="text" id="db_user" name="db_user" value="root"/></p>
  <p><span class="label">pass</span><input type="password" id="db_pass" name="db_pass"/></p>
  <p><span class="label">db name</span><input type="text" id="db_name" name="db_name"></p>
<?php
}

function form_fields_data_selection()
{
?>

<?php
}

function process()
{

}

start(check_ready_state());