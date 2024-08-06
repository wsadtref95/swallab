<?php
$host = 'localhost';
$dbname = "demo";
$user = "root";
$password = "";

try {
    // 連接資料庫
    $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);

    // 從資料庫中獲取資料
    $sql = 'SELECT users.id AS user_id, message.message, message.id AS message_id FROM users INNER JOIN message ON users.id = message.uid ORDER BY message.date DESC;';
    $stmt = $db->query($sql, PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();

    // 設定內容類型
    header('Content-Type: text/html; charset=utf-8');
    $index=0;
    foreach ($rows as $row) {
        $message = htmlspecialchars($row['message']); 
        // $date = htmlspecialchars($row['date']); 
        // $username = $row['name'];
        // $href = $row['href'];
        // $photoBlob = $row['avatar2'];
        $mid = $row['message_id'];
        $uid = $row['user_id'];

        if ($uid == 1){
            print $message;
        }
        
    }
} catch (PDOException $e) {
    echo '連接失敗: ' . $e->getMessage();
}
?>
