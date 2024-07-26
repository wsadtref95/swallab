<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Method: GET, POST, PUT, DELETE, OPTIONS");
header("Content-type: application/json; charset=UTF-8");


$host = 'localhost';
$dbname = 'myprojtest';
$user = 'root';


$className = $_REQUEST['classification'];
// $className = '蔬菜';


$meals_name = $_REQUEST['foodName'];
$price = $_REQUEST['foodPrice'];
// $photo = $_REQUEST['foodPhoto'];
// 餐廳編號
$r_id = 1;
// 圖片處裡
$src = $_FILES['foodPhoto']['tmp_name'];

$uniqid = uniqid();
$dst = "/xampp/image/{$uniqid}";
if (move_uploaded_file($src, $dst)) {
    echo 'ok';
} else {
    echo ($_FILES['foodPhoto']['error']);
}
// $meals_name = '小菜';
// $price = 100;
// $photo = '123123';

// 圖片轉base64
// $photo = base64_encode($photo);

// echo $className, $meals_name, $price, $dst;
try {
    $db = new PDO("mysql:host={$host};dbname={$dbname};", $user);

    // 啟動交易
    $db->beginTransaction();
    
    // 寫入class
    $sql1 = "INSERT INTO class(class) VALUES (?)";
    $stmt1 = $db->prepare($sql1);
    $stmt1->execute([$className]);

    // 取得id
    $insertId = $db->lastInsertId();
    // echo $insertId;

    // 寫入restaurant
    $sql2 = "INSERT INTO restaurant(r_id, class, meals_name, price, photo) VALUES (?, ?, ?, ?, ?)";
    $stmt2 = $db->prepare($sql2);
    $stmt2->execute([$r_id, $insertId, $meals_name, $price, $dst]);

    // 完成交易
    $db->commit();
    echo 'ok';

} catch(PDOException $error) {
    // 返回交易
    $db->rollBack();
    echo "Fail: ", $error->getMessage();
}