<?php
$host = 'localhost';
$dbname = "demo";
$user = "root";
$password = "";


$action = $_GET['action'];

try {
    $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    switch ($action) {
        //抓文章內文
        case 'collectOK':
            collectOK($db);
            break;
        //抓文章大標題
        case 'collectNO':
            collectNO($db);
            break;
    }

} catch (PDOException $e) {
    echo '文章收藏: ' . $e->getMessage();
}

//新增收藏
function collectOK($db) {
    $sql = 'insert into collect (uid,nid,created_at_date) values (1,1,now())';
    $stmt = $db->query($sql, PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();

    header('Content-Type: text/html; charset=utf-8');
    print("收藏成功");
    
}
//抓文章大標題
function collectNO($db) {
    $sql = 'delete from collect where uid=1';
    $stmt = $db->query($sql, PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();

    header('Content-Type: text/html; charset=utf-8');

    print("已取消收藏");
}
