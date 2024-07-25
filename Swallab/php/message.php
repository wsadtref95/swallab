<?php
$host = 'localhost';
$dbname = "demo";
$user = "root";
$password = "";
$message = $_POST["message"];

try {
    // 建立資料庫連接
    $db = new PDO("mysql:host=${host};dbname=${dbname}", $user, $password);
    
    // 設置錯誤模式為異常
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // 準備 SQL 語句
    $sql = "INSERT INTO message (message, date) VALUES (?, NOW())";
    $stmt = $db->prepare($sql);

    // 執行 SQL 語句
    $stmt->execute([$message]);

    echo "留言已成功提交。";
} catch (PDOException $e) {
    // 顯示錯誤信息
    echo "錯誤: " . $e->getMessage();
    error_log("PDO Error: " . $e->getMessage()); // 將錯誤寫入日誌
}


