<?php
$host = 'localhost';
$dbname = "demo";
$user = "root";
$password = "";

try {
    // 連接資料庫
    $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);

    // 從資料庫中獲取資料
    $sql = 'SELECT users.name,users.avatar, message.message, message.date from userinfo insert into message on userinfo.id = message.uid order by message.date desc;';
    $stmt = $db->query($sql, PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();

    // 設定內容類型
    header('Content-Type: text/html; charset=utf-8');

    foreach ($rows as $row) {
        $message = htmlspecialchars($row['message']); 
        $date = htmlspecialchars($row['date']); 
        $username = $row['name'];
        $photoBlob = $row['image'];

        // 自動判斷照片格式型態
        $photoMimeType = (new finfo(FILEINFO_MIME_TYPE))->buffer($photoBlob);
        // 轉base64
        $photoBase64 = base64_encode($photoBlob);

        // IMG的src
        $photoSrc = "data:${photoMimeType};base64,${photoBase64}";

        echo <<<HTML
        <div class="d-flex justify-content-center mt-4 m-0">
            <div class="row d-flex justify-content-center m-2 p-2 commentHeadphoto">
                <div class="col-4 d-flex flex-column align-items-center justify-content-center p-3">
                    <img src="${photoSrc}" alt="">
                    <div>${username}</div>
                </div>
                <div class="col-8 p-0 d-flex flex-column">
                    <p>$message</p>
                    <p >$date</p>
                </div>
            </div>
        </div>
        <br>
        HTML;
    }
} catch (PDOException $e) {
    echo '連接失敗: ' . $e->getMessage();
}
?>
