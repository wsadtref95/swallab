<?php
$discountIndex = 1;
while(isset($_REQUEST['menuList' . $discountIndex]) && isset($_REQUEST['menuName' . $discountIndex]) && isset($_REQUEST['menuPrice' . $discountIndex]) && isset($_REQUEST['startTime' . $discountIndex]) && isset($_REQUEST['endTime' . $discountIndex])) {
    $menuList = $_REQUEST['menuList' . $discountIndex];
    $menuName = $_REQUEST['menuName' . $discountIndex];
    $menuPrice = $_REQUEST['menuPrice' . $discountIndex];
    $startTime = $_REQUEST['startTime' . $discountIndex];
    $endTime = $_REQUEST['endTime' . $discountIndex];
    print("新增優惠項目{$discountIndex}為 : 分類 -> {$menuList} 名稱 -> {$menuName} 折扣價格 -> {$menuPrice} 開始時間 -> {$startTime} 結束時間 -> {$endTime}<br>");
    $discountIndex++;
}