<?php
$host = 'localhost';
$dbname = "swallab";
$user = "root";
$password = "";
$message = $_POST["message"];  //表單name的message

$uid=1;

try {
    // 建立資料庫連接
    $db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $password);
    // 关闭外键检查
    $db->exec('SET FOREIGN_KEY_CHECKS = 0;');
    // 設置錯誤模式為異常
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // 準備 SQL 語句
    $sql = "insert into notescomments (content, created_at, updated_at,m_id,m_n_id) VALUES (?, NOW(), NOW(),?,10)";
    $stmt = $db->prepare($sql);

    // 執行 SQL 語句
    $stmt->execute([$message,$uid]);
    // 重新开启外键检查
    $db->exec('SET FOREIGN_KEY_CHECKS = 1;');
    echo "留言：{$message}";
} catch (PDOException $e) {
    // 顯示錯誤信息
    echo "錯誤: " . $e->getMessage();
    error_log("PDO Error: " . $e->getMessage()); // 將錯誤寫入日誌
}


