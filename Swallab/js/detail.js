//onload時
window.onload = function () {
  sale("青花驕-公益店");
  allMenu("青花驕-公益店");
};
// 按下愛心
document.getElementById("hearticon").addEventListener("click", function () {
  this.classList.toggle("fa-regular");
  this.classList.toggle("fa-solid");
});

// top
document.getElementById("top").addEventListener("click", function () {
  window.scrollTo({
    top: 0,
  });
});
//留言區顯示更多
function showMore(elenentId) {
  //抓id
  let comment = document.getElementById(elenentId);
  //改變屬性從none變成顯示
  comment.style.display = "flex";
}
//留言區要送出留言後才顯示
function showComment(){
  let comment = document.getElementById('inputcomment');
  
}
document.getElementById('enterComment').addEventListener("click",function(){
  
})
//購物車
function removeProduct(rowId) {
  const productRow = document.getElementById(rowId);
  if (productRow) {
    productRow.remove();
    updateSubtotal();
  }
}
//更新總計
function updateSubtotal() {
  //抓所有要計算的Html元素陣列
  var allTotalPrice = document.querySelectorAll(
    ".total-price-forUpdateSubtotal"
  );
  // [
  //     <span>20</span>
  //     <span>310</span>
  //     <span>0</span>
  // ]
  var subtotal = 0;
  //迭代這個陣列去處理每個元素
  //這邊的Element就是一個一個的網頁元素（名字隨便你取）
  allTotalPrice.forEach((Element) => {
    //取值轉換完加總
    subtotal += parseInt(Element.innerHTML.replace("$", ""));
  });

  document.getElementById("subtotal").textContent = `總計: $${subtotal}`;
}
function increment(numberSpanId, priceId, totalPriceId) {
  // 獲取數量的 span 元素
  var numberSpan = document.getElementById(numberSpanId);
  // 獲取當前數量並轉換為數字
  var currentNumber = parseInt(numberSpan.innerText);
  // 增加數量
  currentNumber++;
  // 更新數量的 span 元素的文本
  numberSpan.innerText = currentNumber;
  // 在控制台輸出 2
  // console.log(2);
  // 更新總價（這部分取決於你的邏輯，可以省略）
  updateTotalPrice(numberSpanId, priceId, totalPriceId);
}

function decrement(numberSpanId, priceId, totalPriceId) {
  // 獲取數量的 span 元素
  var numberSpan = document.getElementById(numberSpanId);
  // 獲取當前數量並轉換為數字
  var currentNumber = parseInt(numberSpan.innerText);
  // 檢查當前數量是否大於 0，以防止數量變為負數
  if (currentNumber > 0) {
    // 減少數量
    currentNumber--;
    // 更新數量的 span 元素的文本
    numberSpan.innerText = currentNumber;
    // 在控制台輸出當前數量
    console.log(currentNumber);
    // 更新總價（這部分取決於你的邏輯，可以省略）
    updateTotalPrice(numberSpanId, priceId, totalPriceId);
  }
}
// 更新小計
function updateTotalPrice(numberSpanId, priceId, totalPriceId) {
  // 獲取數量的 span 元素
  var numberSpan = document.getElementById(numberSpanId);
  // 獲取價格元素
  var priceElement = document.getElementById(priceId);
  // 獲取總價的元素
  var totalPriceElement = document.getElementById(totalPriceId);
  // 獲取當前數量和單價
  var currentNumber = parseInt(numberSpan.innerText);
  var price = parseInt(priceElement.innerText);
  // 計算總價
  var totalPrice = currentNumber * price;
  // 更新總價的元素的文本
  totalPriceElement.innerText = `$${totalPrice}`;

  //console.log(totalprices);
  updateSubtotal();
}

//取得餐廳詳細資訊
function sale() {
  var a = {
    service: "sale",
  };
  $.ajax({
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    data: a,
    dataType: "json",
  })
    .done(function (responseData) {
      var container = $("#restaurant-info");
      if (responseData.length > 0) {
        responseData.forEach(function (item) {
          var html = `
                            <div class="hotpot">
                                <div style="font-size: 30px; font-weight: bold;">${item.restaurant_name}</div>
                                <div class="ml-5" style="font-size: 25px; font-weight: bold;">
                                    ${item.rating}分 <span style="font-size: 20px">(33)</span>
                                </div>
                                <div class="ml-5 mt-2">均消${item.avgcost}</div>
                                <span class="mt-2">地址：${item.address}</span>
                                <button class="score" data-toggle="modal" data-target="#scoreModal" id="score">點我評分</button>
                            </div>
                        `;
          container.append(html);
        });
      }
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
      console.error("AJAX 請求失敗:", textStatus, errorThrown);
    });
}

//送出餐廳評論
document.getElementById("enterComment").addEventListener("click", function () {
  const commentInput = document.getElementById("commentInput").value;
  let selectedRating = 0;
  let stars = document.querySelectorAll(".star-rating i");
  // commentInput.innerText = 
  stars.forEach((star, index) => {
    if (star.classList.contains("fa-solid")) {
      selectedRating = index + 1;
    }
  });

  comment(commentInput, selectedRating);
  // 更新留言
  const updateComment = document.getElementById("userComment");
  updateComment.innerText = `${commentInput}`;
});


let stars = document.querySelectorAll(".star-rating i");

stars.forEach((star, index) => {
  star.addEventListener("click", () => {
    // console.log(index);
    stars.forEach((s, i) => {
      if (i <= index) {
        s.classList.remove("fa-regular");
        s.classList.add("fa-solid");
      } else {
        s.classList.remove("fa-solid");
        s.classList.add("fa-regular");
      }
    });
  });
});
//按送出後model要消失
$(document).ready(function() {
  $('#enterComment').click(function() {
      $('#scoreModal').modal('hide');
  });
});
//按評分星星

function comment(x, y) {
  var form = new FormData();
  form.append("service", "comment");
  form.append("userid", "1");
  form.append("restaurantid", "1");
  form.append("star", y);
  form.append("comment", x);

  var settings = {
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    mimeType: "multipart/form-data",
    contentType: false,
    data: form,
  };

  $.ajax(settings).done(function (response) {
    console.log(response);
  });
}
//抓各類別餐廳菜單
function menu(input_className, input_restaurant_name) {
  var form = new FormData();
  form.append("service", "menu");
  form.append("className", input_className);
  form.append("restaurant_name", input_restaurant_name);

  $.ajax({
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    mimeType: "multipart/form-data",
    contentType: false,
    data: form,
    dataType: "json"
  })
    .done(function (responseData) {
      var container = $("#menu-container");
      console.log(responseData);
      container.empty();
      if (responseData.length > 0) {
        responseData.forEach(function (item) {
            console.log('====================================');
            console.log(item);
            console.log('====================================');
          var html = `
        <div class=" col-4 mb-4">
            <img class="ml-3 myimg" src="data:image/jpeg;base64,${item.photo}" alt="" >
            <div class="name">${item.meals_name}</div>
            <div class="d-flex money">
                <div class="fs-20 ">$</div>
                <div class="price" id="price-1">${item.price}</div>
            </div>
            <button class="score ml-5" data-toggle="modal" data-target="#cartModal">加入購物車</button>
        </div>    
                        `;
          container.append(html);
        });
      }
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
      console.error("AJAX 請求失敗:", textStatus, errorThrown);
    });
}

//抓全部類別的菜單
function allMenu(input_restaurant_name) {
  var form = new FormData();
  form.append("service", "menu");
  form.append("restaurant_name", input_restaurant_name);

  $.ajax({
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    mimeType: "multipart/form-data",
    contentType: false,
    data: form,
    dataType: "json"
  })
    .done(function (responseData) {
      var container = $("#menu-container");
      console.log(responseData);
      container.empty();
      if (responseData.length > 0) {
        responseData.forEach(function (item) {
            console.log('====================================');
            console.log(item);
            console.log('====================================');
          var html = `
        <div class=" col-4 mb-4">
            <img class="ml-3 myimg" src="data:image/jpeg;base64,${item.photo}" alt="" >
            <div class="name">${item.meals_name}</div>
            <div class="d-flex money">
                <div class="fs-20 ">$</div>
                <div class="price" id="price-1">${item.price}</div>
            </div>
            <button class="score ml-5" data-toggle="modal" data-target="#cartModal">加入購物車</button>
        </div>    
                        `;
          container.append(html);
        });
      }
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
      console.error("AJAX 請求失敗:", textStatus, errorThrown);
    });
}
