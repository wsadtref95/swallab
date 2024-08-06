<?php
$host = 'localhost';
$dbname = "demo";
$user = "root";
$password = "";

try {
    // 連接資料庫
    $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);

    // 從資料庫中獲取資料
    $sql = 'SELECT users.name, users.avatar2, users.id AS user_id, users.href, message.message, message.date, message.id AS message_id FROM users INNER JOIN 
    message ON users.id = message.uid ORDER BY message.date DESC;';
    $stmt = $db->query($sql, PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();

    // 設定內容類型
    header('Content-Type: text/html; charset=utf-8');
    $index=0;
    foreach ($rows as $row) {
        $message = htmlspecialchars($row['message']); 
        $date = htmlspecialchars($row['date']); 
        $username = $row['name'];
        $href = $row['href'];
        $photoBlob = $row['avatar2'];
        $mid = $row['message_id'];
        $uid = $row['user_id'];

        // 自動判斷照片格式型態
        $photoMimeType = (new finfo(FILEINFO_MIME_TYPE))->buffer($photoBlob);
        // 轉base64
        $photoBase64 = base64_encode($photoBlob);

        // IMG的src
        $photoSrc = "data:${photoMimeType};base64,${photoBase64}";

        echo <<<HTML
        <div class="d-flex justify-content-center mt-4 m-0 test"  data-uid=${uid} data-mid=${mid}">
            <div class="row d-flex justify-content-center m-2 p-2 commentHeadphoto">
                <div class="col-4 d-flex flex-column align-items-center justify-content-center p-3">
                    <img src="${photoSrc}" alt="">    
                    <a href="${href}" style="text-decoration: none;color:black">
                        <div >${username}</div>      
                    </a>

                </div>
                <div class="col-8 p-0 d-flex flex-column">
                    <p>$message</p>
                    <p id="edit" class="d-flex justify-content-end"></p>
                    <p class="d-flex justify-content-end">$date</p>
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
