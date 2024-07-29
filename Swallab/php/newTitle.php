<?php
$host='localhost';
$dbname="demo";
$user="root";
$uid=$_GET["id"];

try {
    $db =new PDO("mysql:host=${host};dbname=${dbname}",$user);  
    $sql="select * from newtitle where id=? ";
    $stmt=$db->prepare($sql);  //資料綁定，執行sql 
    $stmt->execute([$uid]);  //資料綁定，把問號的內容改為$uid
    $rows =$stmt->fetchAll();   //執行上一行的綁定
    if (count ($rows)!=0){   //不等於0，就是有資料  (只會有1筆，就是我們網址輸入的)
        $image=$rows[0]['image'];   //只有1筆，索引值是0，它的圖片欄位名稱是image
        $mime_type= (new finfo(FILEINFO_MIME_TYPE)) ->buffer($image);   //自動判斷檔案的副檔名是什麼
        header('content-type:${mime_type}');
        print($image);  //photo欄位的圖片
    } 
}catch(PDOExcaption $e){
    print($e);
}









