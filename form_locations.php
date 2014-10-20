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

  if (isset_fields(array('db_host','db_user', 'db_name'))){
    $state = STATE_DB_CONNECTION;
  }

  if (isset_fields(array('tbl_country', 'col_country', 'col_country_iso2', 'col_country_iso3'))) {
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
  <h3>DB Access</h3>
  <p><span class="label required">host</span><input type="text" id="db_host" name="db_host" value="localhost" required="required"></p>
  <p><span class="label required">user</span><input type="text" id="db_user" name="db_user" value="root" required="required"></p>
  <p><span class="label">pass</span><input type="password" id="db_pass" name="db_pass"></p>
  <p><span class="label required">db name</span><input type="text" id="db_name" name="db_name" required="required"></p>
<?php
}

function form_fields_data_selection()
{
?>
  <h3>Country</h3>
  <p><span class="label required">table</span><input type="text" id="tbl_country" name="tbl_country" required="required"></p>
  <p><span class="label">id</span><input type="text" id="col_country_id" name="col_country_id"></p>
  <p><span class="label required">name</span><input type="text" id="col_country" name="col_country" required="required"></p>
  <p><span class="label required">iso2</span><input type="text" id="col_country_iso2" name="col_country_iso2" required="required"></p>
  <p><span class="label required">iso3</span><input type="text" id="col_country_iso3" name="col_country_iso3" required="required"></p>
  <hr>
<?php
}

function process()
{

}

start(check_ready_state());