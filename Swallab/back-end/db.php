<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

$host = "localhost";
$dbname ="swallab";
$user = "root";
$pwd = null; //密碼一定要打，沒有密碼就打null

    $db = new mysqli($host,$user,$pwd,$dbname);
    $db->set_charset('utf8mb4'); //定序
    //$ret 是一個布林值。當插入操作成功時，$ret 的值為 1(true)；如果操作失敗，$ret 的值為 空字串(false)。
    