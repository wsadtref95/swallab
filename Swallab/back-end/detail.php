<?php
$host = "localhost";
$dbname = "swallab";
$user = "root";
$db = new PDO("mysql:host=${host};dbname=${dbname}", $user);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);



$service = isset($_POST["service"]) ? $_POST["service"] : '';

switch ($service) {
    case 'sale':
        sale($_POST["restaurantName"]);
        break;
    
    case 'saveComment':
        saveComment($_POST["userid"],$_POST["restaurantid"],$_POST["star"],$_POST["comment"]);
        break;
    case 'menu':
        menu($_POST["className"], $_POST["restaurant_name"]);
        break;
    case 'allMenu':
        allMenu($_POST["restaurant_name"]);
        break;
    case 'showComment':
        showComment($_POST["restaurant_name"]);
        break;
    case 'saleMenu':
        saleMenu($_POST["restaurant_name"]);
        break;
    default:
        print("未知的服務");
        break;
}
//取得餐廳資訊
function sale ($a) {
    //取全域的資料庫配置
    global $db;
    try {
        // 建立資料庫連線
        $sql = "SELECT * FROM `RestaurantCategory` WHERE id = 1";
        $stmt = $db->prepare($sql);
        $stmt->execute($a);
        
        // 把所有的查詢結果存在 rows 裡
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        // 處理圖片並將其轉換為 base64
        foreach ($rows as &$row) {
            if (isset($row['restaurant_image'])) {
                $image = $row['restaurant_image'];
                
                // 確保 $image 是有效的二進制數據
                // 這裡假設 $image 是二進制數據，根據實際情況你可能需要用 file_get_contents 讀取文件
                $image_base64 = base64_encode($image);
                
                // 更新 $row 以包含 base64 編碼的圖片
                $row['restaurant_image'] = $image_base64;
            }
        }

        // 返回 JSON 格式的數據
        header('Content-Type: application/json');
        echo json_encode($rows);

    } catch (PDOException $e) {
        // 更正錯誤處理
        error_log($e->getMessage());
        header('Content-Type: application/json');
        echo json_encode(["error" => "資料庫錯誤"]);
    }
};
//評論
//INSERT INTO `rating` VALUES ('1','1','1',4.1,'嗚哈哈')
function saveComment($userid, $restaurantid, $star, $comment) {
    global $db;
    
    try {
        // 建立 SQL 語句
        $sql = "INSERT INTO rating (userid, restaurantid, rating, comment) VALUES (?, ?, ?, ?)";
        $stmt = $db->prepare($sql);
        
        // 綁定參數 (注意：索引從 1 開始)
        $stmt->bindParam(1, $userid, PDO::PARAM_STR);
        $stmt->bindParam(2, $restaurantid, PDO::PARAM_STR);
        $stmt->bindParam(3, $star, PDO::PARAM_INT);
        $stmt->bindParam(4, $comment, PDO::PARAM_STR);
        
        // 執行 SQL 語句
        $stmt->execute();
        
        echo "Comment successfully added.";
    } catch (PDOException $e) {
        // 錯誤處理
        echo "Error: " . $e->getMessage();
    }
};


// 抓各類別的菜單
function menu ($className, $restaurant_name) {
    //取全域的資料庫配置
    global $db;
    try {
        // 建立資料庫連線
        $sql = "SELECT meals_name ,price , photo  , className FROM restaurant
        left join RestaurantCategory on restaurant.r_id = RestaurantCategory.id
        left join class on restaurant.class = class.class_num
        where className = ? and restaurant_name = ?;";
        $stmt = $db->prepare($sql);
        $stmt->bindParam(1, $className, PDO::PARAM_STR);
        $stmt->bindParam(2, $restaurant_name, PDO::PARAM_STR);
        $stmt->execute();
        
        // 把所有的查詢結果存在 rows 裡
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

        foreach ($rows as &$row){
            $imgPath = $row['photo'];
            $img = file_get_contents('/Applications' . $imgPath);
            // $mimeType = (new finfo(FILEINFO_MIME_TYPE))-buffer($img);
            // print($img);
        //     // $base64Img = 'data:' . $mineType . ';base64' . base64_encode($img);

            $row['photo'] = base64_encode($img);
        };
        

        // 返回 JSON 格式的數據
        header('Content-Type: application/json');
        echo json_encode($rows);

    } catch (PDOException $e) {
        // 更正錯誤處理
        error_log($e->getMessage());
        header('Content-Type: application/json');
        echo json_encode(["error" => "資料庫錯誤"]);
    }
};



//抓全部菜單
function allMenu($restaurant_name){
    //取全域的資料庫配置
    global $db;
    try {
        // 建立資料庫連線
        $sql = "SELECT meals_name ,price , photo , className FROM restaurant
        left join RestaurantCategory on restaurant.r_id = RestaurantCategory.id
        left join class on restaurant.class = class.class_num
        where restaurant_name = ?;";
        $stmt = $db->prepare($sql);
        // $stmt->bindParam(1, $className, PDO::PARAM_STR);
        $stmt->bindParam(1, $restaurant_name, PDO::PARAM_STR);
        $stmt->execute();
        
        // 把所有的查詢結果存在 rows 裡
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

        foreach ($rows as &$row){
            $imgPath = $row['photo'];
            $img = file_get_contents('/Applications' . $imgPath);
            // $mimeType = (new finfo(FILEINFO_MIME_TYPE))-buffer($img);
            // print($img);
        //     // $base64Img = 'data:' . $mineType . ';base64' . base64_encode($img);

            $row['photo'] = base64_encode($img);
        };
        

        // 返回 JSON 格式的數據
        header('Content-Type: application/json');
        echo json_encode($rows);

    } catch (PDOException $e) {
        // 更正錯誤處理
        error_log($e->getMessage());
        header('Content-Type: application/json');
        echo json_encode(["error" => "資料庫錯誤"]);
    }
}
//顯示留言
function showComment($restaurant_name){
    //取全域的資料庫配置
    global $db;
    try {
        // 建立資料庫連線
        $sql = "SELECT comment , rating.createDate FROM RestaurantCategory left join rating on RestaurantCategory.id = rating.restaurantId
        where restaurant_name = ?
        order by rating.createDate desc;";
        $stmt = $db->prepare($sql);
        // $stmt->bindParam(1, $className, PDO::PARAM_STR);
        $stmt->bindParam(1, $restaurant_name, PDO::PARAM_STR);
        $stmt->execute();
        
        // 把所有的查詢結果存在 rows 裡
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        

        // 返回 JSON 格式的數據
        header('Content-Type: application/json');
        echo json_encode($rows);

    } catch (PDOException $e) {
        // 更正錯誤處理
        error_log($e->getMessage());
        header('Content-Type: application/json');
        echo json_encode(["error" => "資料庫錯誤"]);
    }
}

//抓限時優惠的菜單
function saleMenu($restaurant_name){
        //取全域的資料庫配置
        global $db;
        try {
            // 建立資料庫連線
            $sql = "SELECT meals_name ,meal_discount.price as price, photo , className , end_time FROM restaurant
            left join RestaurantCategory on restaurant.r_id = RestaurantCategory.id
            left join class on restaurant.class = class.class_num
            right join meal_discount on restaurant.id = meal_discount.food_id
            where restaurant_name = ?;";
            $stmt = $db->prepare($sql);
            // $stmt->bindParam(1, $className, PDO::PARAM_STR);
            $stmt->bindParam(1, $restaurant_name, PDO::PARAM_STR);
            $stmt->execute();
            
            // 把所有的查詢結果存在 rows 裡
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
            foreach ($rows as &$row){
                $imgPath = $row['photo'];
                $img = file_get_contents('/Applications' . $imgPath);
                // $mimeType = (new finfo(FILEINFO_MIME_TYPE))-buffer($img);
                // print($img);
            //     // $base64Img = 'data:' . $mineType . ';base64' . base64_encode($img);
    
                $row['photo'] = base64_encode($img);
            };
            
    
            // 返回 JSON 格式的數據
            header('Content-Type: application/json');
            echo json_encode($rows);
    
        } catch (PDOException $e) {
            // 更正錯誤處理
            error_log($e->getMessage());
            header('Content-Type: application/json');
            echo json_encode(["error" => "資料庫錯誤"]);
        }
    }