<?php
$host = 'localhost';
$dbname = "demo";
$user = "root";

//居酒屋的最新文章-圖片

try {
    $db = new PDO("mysql:host={$host};dbname={$dbname}", $user);  
    $sql = "select image from foodnotes where type = 'izakaya' order by date desc limit 3;";  
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $rows = $stmt->fetchAll();

    if (count($rows) != 0) {
        $images = [];
        foreach ($rows as $row) {
            $image = $row['image'];
            $mime_type = (new finfo(FILEINFO_MIME_TYPE))->buffer($image);
            $images[] = [
                'mime_type' => $mime_type,
                'image' => base64_encode($image)  // base64轉照片
            ];
        }
        header('Content-Type: application/json');
        echo json_encode($images);
    } 
} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
?>