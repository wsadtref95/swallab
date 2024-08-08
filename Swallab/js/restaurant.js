//畫面onload時call兩隻api

window.onload = function (){
    restaurantInfo('最高評分');
    sale('最高評分');
}
    

//     限時優惠的dom元素  = document.getElementById(限時優惠的dom元素);
//     限時優惠的dom元素.innerHTML = a的結果.restaurantName;

//抓餐廳資訊
function restaurantInfo(b) {
    
    var parameters = {
        service: 'getRestaurantInfo',
        categoryName: b
    };

    $.ajax({
        url: 'http://localhost/Swallab/swallab/back-end/restaurant.php',
        method: 'POST',
        data: parameters,
        dataType: 'json'
    }).done(function(responseData) {
        var container = $('#restaurant-cards-container');
        container.empty(); // 清空現有的卡片

        // 限制最多顯示 12 個卡片
        var maxItems = 12;
        var itemsToShow = responseData.slice(0, maxItems);

        //顯示餐廳資訊
        var restaurantDetail = responseData;

        itemsToShow.forEach(function(item) {
            // 創建卡片元素
            var cardHtml = `
                <div class="col-4 mb-4">
                    <div class="card overflow-hidden">
                        <a href="./detail.html">
                            <div class="card-body">
                                <img src="data:image/jpeg;base64,${item.restaurant_image}" alt="" class="img-fluid">
                            </div>
                        </a>
                        <div class="card-footer">
                            <div>
                                <p>${item.restaurant_name}</p>
                                <i class="fa-solid fa-star"></i>
                                <span>${item.rating}</span>
                            </div>
                        </div>
                    </div>
                </div>
            `;

            // 將卡片插入容器
            container.append(cardHtml);
        });
        restaurantDetail.forEach(function(item){
            var detail = `

            `
        })
    }).fail(function(jqXHR, textStatus, errorThrown) {
        console.error('AJAX 請求失敗:', textStatus, errorThrown);
    });
}

//抓限時優惠的餐廳資訊
function sale (a){
    
    var parameters = {
        service: 'getSaleInfo',
        categoryName: a
    };

    $.ajax({
        url: 'http://localhost/Swallab/swallab/back-end/restaurant.php',
        method: 'POST',
        data: parameters,
        dataType: 'json'
    }).done(function(responseData) {
        var container = $('#sale-container');
        container.empty(); // 清空現有的卡片

        // 限制最多顯示 12 個卡片
        var maxItems = 5;
        var itemsToShow = responseData.slice(0, maxItems);

        itemsToShow.forEach(function(item) {
            var saleEndTime = new Date(item.SaleTime);
            // 創建卡片元素
            var salecardHtml = `
            <div class="card position-relative">
                <div class="card-body">
                <img src="data:image/jpeg;base64,${item.restaurant_image}" alt="" class="img-fluid">
                </div>
                <span class="countDown">倒數<span class="countDownTime" data-end-time="${saleEndTime.toISOString()}"></span>小時</span>
                <div class="card-footer">${item.restaurant_name}</div>
            </div>
            `;

            // 將卡片插入容器
            container.append(salecardHtml);
        });
        updateCountdown();
    }).fail(function(jqXHR, textStatus, errorThrown) {
        console.error('AJAX 請求失敗:', textStatus, errorThrown);
    });
    
}
//限時優惠的倒數
function updateCountdown() {
    document.querySelectorAll('.countDownTime').forEach(function(element) {
        var endTime = new Date(element.getAttribute('data-end-time'));
        var now = new Date();
        var timeDiff = endTime - now;

        if (timeDiff > 0) {
            var hours = Math.floor(timeDiff / (1000 * 60 * 60));
            // var minutes = Math.floor((timeDiff % (1000 * 60 * 60)) / (1000 * 60));
            // var seconds = Math.floor((timeDiff % (1000 * 60)) / 1000);

            element.textContent = `${hours}`;
        } else {
            element.textContent = '已結束';
        }
    });
}    