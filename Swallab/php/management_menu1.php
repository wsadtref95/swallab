<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Method: GET, POST, PUT, DELETE, OPTIONS");
header("Content-type: application/json; charset=UTF-8");


$host = 'localhost';
$dbname = 'myprojtest';
$user = 'root';

try {
    // $db = new PDO("mysql:host={$host};dbname={$dbname};charset=utf8mb4", $user);
    $db = new PDO("mysql:host={$host};dbname={$dbname};", $user);
    $parts = explode('/', $_SERVER['REQUEST_URI']);
    // var_dump($parts);

    switch ($parts[4]) {
        case 'getClass':
            $sql = 'SELECT * FROM class';
            $result = $db->query($sql);
            
            $data = [];
            foreach ($result as  $value) {
                $data[] = $value;
            }

            $myJSON_data = json_encode($data, JSON_UNESCAPED_UNICODE);
            echo $myJSON_data;
            
            break;
        
        case 'getClassList':
            // $class_id = $parts[4];
            $classId = $_REQUEST['classId'];
            // echo $class_id;
            // die();
            $sql = "SELECT * FROM restaurant WHERE class = ?";
            $stmt = $db->prepare($sql);
            $stmt->execute([$classId]);
            $result = $stmt->fetchAll();
            
            $data = [];
            foreach ($result as  $value) {
                $data[] = $value;
            }

            $myJSON_data = json_encode($data, JSON_UNESCAPED_UNICODE);
            echo $myJSON_data;
            break;
        case 'getPrice':
            // $classId = $parts[4];
            $foodId = $_REQUEST['foodId'];
            // echo $classId;
            // die();
            $sql = "SELECT * FROM `restaurant` WHERE id = ?";
            $stmt = $db->prepare($sql);
            $stmt->execute([$foodId]);
            $result = $stmt->fetchAll();
            
            $data = [];
            foreach ($result as  $value) {
                $data[] = $value;
            }

            $myJSON_data = json_encode($data, JSON_UNESCAPED_UNICODE);
            echo $myJSON_data;
            break;
        
    }
} catch(PDOException $err) {
    echo $err;
}