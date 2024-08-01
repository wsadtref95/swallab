<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
$host = "localhost";
$dbname ="swallab";
$user = "root";
$pwd = null; //密碼一定要打，沒有密碼就打null
try{
    $db = new mysqli($host,$user,$pwd,$dbname);
    $db->set_charset('utf8mb4'); 
$a = $_GET["commentUid"];
$b = $_GET["userUid"];
$c = $_GET["restaurantUid"];
$d = $_GET["score"];
$e = $_GET["commentContent"];


$sql = "INSERT into Comment VALUES(?,?,?,?,?)";
$stmt = $db->prepare($sql);
$stmt->bind_param("sssis",$a,$b,$c,$d,$e);
$stmt->execute();
return 87;
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
