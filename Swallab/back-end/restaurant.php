<?php
$host = "localhost";
$dbname = "swallab";
$user = "root";
$db = new PDO("mysql:host=${host};dbname=${dbname}", $user);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$service = isset($_POST["service"]) ? $_POST["service"] : '';




switch ($service) {
    case 'getRestaurantInfo':
        getRestaurantInfo($_POST["categoryName"]);
        break;
    //  範例 
    case 'getSaleInfo':
        getSaleInfo($_POST["categoryName"]);
        break;
    default:
        print("未知的服務");
        break;
}
//取得一般的全部餐廳
//$a＝上面的$_POST["categoryName"]
function getRestaurantInfo($a) {
    //取全域的資料庫配置
    global $db;
    try {
        $sql = "";
        // 建立資料庫連線
        if ($a=='最高評分') {
           $sql = "SELECT * FROM `RestaurantCategory` order by rating desc";
           $stmt = $db->prepare($sql);
           $stmt->execute();
        
       } else {
           $sql = "SELECT * FROM RestaurantCategory  WHERE category_name = ? order by rating desc";
           $stmt = $db->prepare($sql);
           $stmt->execute([$a]);
        
       }
       


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
}
//取得限時優惠
function getSaleInfo($a) {
    //取全域的資料庫配置
    global $db;
    try {
        // 如果最高評分的話取全部分類的
        // 如果不是的話 取該分類的限時優惠
        if($a=='最高評分'){
            $sql = "SELECT restaurant_name , rating , avgcost , address , href , item_name , restaurant.price as origin_price , photo , meal_discount.price as new_price , end_time FROM RestaurantCategory
            right join restaurant on RestaurantCategory.id = restaurant.r_id
            right join meal_discount on restaurant.id = meal_discount.food_id
            group by restaurant_name
            order by rating desc;";
            $stmt = $db->prepare($sql);
            $stmt->execute();

        }else{
            $sql = "SELECT restaurant_name ,  rating , avgcost , address , href , item_name , restaurant.price as origin_price , photo , meal_discount.price as new_price , end_time FROM RestaurantCategory
            right join restaurant on RestaurantCategory.id = restaurant.r_id
            right join meal_discount on restaurant.id = meal_discount.food_id
            where category_name = ? 
            group by restaurant_name
            order by rating desc";
            $stmt = $db->prepare($sql);
            $stmt->execute([$a]); 
        }

        

        // 把所有的查詢結果存在 rows 裡
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        // 處理圖片並將其轉換為 base64
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

?>


