<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Method: GET, POST, PUT, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Content-type: application/json; charset=UTF-8");

error_reporting(E_ALL);
ini_set('display_errors', 1);

$host = 'localhost';
$dbname = 'Swallab_Final';
$user = 'root';

try {
    $conn = new PDO("mysql:host={$host};dbname={$dbname};", $user);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $type = $_GET['type'];
    $data = [];

    switch ($type) {
        case 'Orders':
            $sql = "SELECT * FROM Members WHERE m_id < 5";
            break;
        case 'Notes':
            $sql = "SELECT * FROM MemberNotes";
            break;
        case 'Comments':
            $sql = "SELECT * FROM NotesComments";
            break;
        case 'Favorites':
            $sql = "SELECT * FROM MemberFavorites";
            break;
        default:
            echo json_encode(['error' => 'Invalid type']);
            exit();
    }

    // echo $sql; // 調試信息

    $stmt = $conn->prepare($sql);
    $stmt->execute();

    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($result) {
        $data = $result;
    } else {
        $data = [];
    }

    // var_dump($data); // 調試信息

    echo json_encode($data);

} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

$conn = null;
?>
