<?php
$host = 'localhost';
$dbname = 'demo';
$user = 'root';

//各分類統整的最新文章-標題+日期

try {
    $db = new PDO("mysql:host={$host};dbname={$dbname};charset=utf8mb4", $user);
    $sql = 'select comment, date from foodnotes order by date desc limit 3';
    $result = $db->query($sql);

    $data = [];
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        $data[] = $row;
    }

    echo json_encode($data, JSON_UNESCAPED_UNICODE);
} catch (PDOException $e) {
    echo json_encode(['error' => '最新消息內容失敗', 'message' => $e->getMessage()]);
}
?>
