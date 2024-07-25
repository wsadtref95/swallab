<?php
$host = 'localhost';
$dbname = "demo";
$user = "root";
$password = "";

try {
    // 連接資料庫
    $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);

    // 從資料庫中獲取資料
    $sql = "SELECT * FROM message ORDER BY date DESC";
    $stmt = $db->query($sql, PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();

    // 設定內容類型為 JSON
    header('Content-Type: application/json');

    // 遍歷結果並生成 HTML
    foreach ($rows as $row) {
        $message = htmlspecialchars($row['message']); // 為安全起見進行轉義
        $date = htmlspecialchars($row['date']); // 為安全起見進行轉義

        echo <<<HTML
        <div class="d-flex justify-content-center mt-4 m-0">
            <div class="row d-flex justify-content-center m-2 p-2 commentHeadphoto">
                <div class="col-4 d-flex flex-column align-items-center justify-content-center p-3">
                    <img src="../images/other/小豬皮傑.jpg" alt="">
                    <div>小豬皮傑</div>
                </div>
                <div class="col-8 p-0 d-flex flex-column">
                    <p>
                        $message
                    </p>
                    <p style="align-self: flex-end; margin-right: 10px;">$date</p>
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
