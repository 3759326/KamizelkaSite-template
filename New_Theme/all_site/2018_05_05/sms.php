<?
include "smsc_api.php";
 list($sms_id, $sms_cnt, $cost, $balance) = send_sms("0503759326", "Ваш пароль: 123", 1);
 ?>