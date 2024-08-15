//onload時
window.onload = function () {
  sale("青花驕-公益店");
  allMenu("青花驕-公益店");
  showComment("青花驕-公益店");
};
// 按下愛心
document.getElementById("hearticon").addEventListener("click", function () {
  if (this.classList.contains("fa-regular")) {
    this.classList.toggle("fa-solid");
    var form = new FormData();
    form.append("service", "favorite");
    form.append("m_id", "1");
    form.append("r_id", "1");
    form.append("alreadyAdd", true);

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
      
    });
  } else {
    this.classList.toggle("fa-regular");
    var form = new FormData();
    form.append("service", "favorite");
    form.append("m_id", "1");
    form.append("r_id", "1");
    form.append("alreadyAdd", false);

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
      
    });
  }
});
//收藏
document.getElementById("hearticon").onclick = function (a) {
  var form = new FormData();
  form.append("service", "favorite");
  form.append("m_id", "1");
  form.append("r_id", "1");

  var settings = {
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    mimeType: "multipart/form-data",
    contentType: false,
    data: form,
  };
  $.ajax(settings).done(function (response) {});
};
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
function showComment() {
  let comment = document.getElementById("inputcomment");
}
document
  .getElementById("enterComment")
  .addEventListener("click", function () {});
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
    // console.log(currentNumber);
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
          console.log(item);
          var html = `
                            <div class="hotpot">
                                <div style="font-size: 30px; font-weight: bold;">${item.restaurant_name}</div>
                                <div class="ml-5" style="font-size: 25px; font-weight: bold;">
                                    ${item.rating}分 <span style="font-size: 20px">(33)</span>
                                </div>
                                <div class="ml-5 mt-2">均消${item.avgcost}</div>
                                <span class="mt-2 mr-2">地址：${item.address}</span>
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

  stars.forEach((star, index) => {
    if (star.classList.contains("fa-solid")) {
      selectedRating = index + 1;
    }
  });

  saveComment(commentInput, selectedRating);
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

//按評分星星

function saveComment(x, y) {
  var form = new FormData();
  form.append("service", "saveComment");
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
    // console.log(response);
    showComment("青花驕-公益店");
  });
}
//抓評論在留言區
function showComment(input_restaurant_name) {
  //console.log(1);
  var form = new FormData();
  form.append("service", "showComment");
  form.append("restaurant_name", input_restaurant_name);
  $.ajax({
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    mimeType: "multipart/form-data",
    contentType: false,
    data: form,
    dataType: "json",
  })
    .done(function (responseData) {
      var container = $("#inputcomment");

      container.empty();
      if (responseData.length > 0) {
        
        i = 0;
        console.log(responseData);
        responseData.forEach(function (item) {
          i += 1;
          if (i <= 3) {
            
            var stars = '';
            for (var s = 0; s < item.rating; s++) {
              stars += '<i class="fa-solid fa-star"></i>';
            }

            var html = `
           <div class="row" >
                            <div class="col-3">
                              <img class="ml-2" src="./../images/other/David.png" style="width: 150px;">
                              <div style="text-align: center;">David</div>
                            </div>
                            <div class="col-9 position-relative">
                            <div  class="d-flex mt-3" style="font-size: 20px; color: gold;">
                              ${stars}
                            </div>
                              
                              <div id="userComment" class="mt-3">
                                ${item.comment}
                              </div>
                              <p class="position-absolute date p-0">${item.createDate}</p>
                            </div>
                            
                            </div>
                            <hr> 
                        `;
            container.append(html);
          } else {
            var html = `
            <div class="row hidden"  id="hidden-Comment" style="display: none;">
            <div class="col-3">
            <img class="ml-2" src="./../images/other/David.png" style="width: 150px;">
            </div>
            <div class="col-9">
                <div>
                ${item.comment}
                </div>
                <div class="date" style="margin-top: 60px;">${item.createDate}</div>
            </div>
        </div>
                          `;
            container.append(html);
          }
        });
      }
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
      console.error("AJAX 請求失敗:", textStatus, errorThrown);
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
    dataType: "json",
  })
    .done(function (responseData) {
      var container = $("#menu-container");

      container.empty();
      if (responseData.length > 0) {
        responseData.forEach(function (item) {
          var html = `
        <div class=" col-4 mb-4">
            <img class="ml-3 myimg" src="data:image/jpeg;base64,${item.photo}" alt="" >
            <div class="name">${item.meals_name}</div>
            <div class="d-flex money">
                <div class="fs-20 ">$</div>
                <div class="price" id="price-1">${item.price}</div>
            </div>
            <button class="score ml-5" data-toggle="modal" data-target="#cartModal" data-name="${item.meals_name}" data-price="${item.price}" data-photo="${item.photo}" ">加入購物車</button>
        </div>    
                        `;
          container.append(html);

          var title = $("#title");

          title.empty();
          var html = `
            <div class="ml-3 mb-4" style="font-size: 30px; font-weight: bold;">${responseData[0].className}</div>
          `;
          title.append(html);
        });
      }
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
      console.error("AJAX 請求失敗:", textStatus, errorThrown);
    });

  // 加入購物車的商品跟資料庫商品可以對應
  $(document).on("click", ".score", function () {
    var name = $(this).data("name");
    var price = $(this).data("price");
    var photo = $(this).data("photo");

    // console.log('名字',name);
    // console.log('價格',price);
    // console.log('照片',photo);

    $("#cartModal .product-img").attr("src", "data:image/jpeg;base64," + photo);
    $("#cartModal .items").text(name);
    $("#cartModal .prices").text(price);
  });
}

//抓全部類別的菜單
function allMenu(input_restaurant_name) {
  var form = new FormData();
  form.append("service", "allMenu");
  form.append("restaurant_name", input_restaurant_name);
  // console.log(123);
  $.ajax({
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    mimeType: "multipart/form-data",
    contentType: false,
    data: form,
    dataType: "json",
  })
    .done(function (responseData) {
      var container = $("#menu-container");
      console.log("名字", responseData[0].meals_name);
      container.empty();
      if (responseData.length > 0) {
        responseData.forEach(function (item) {
          var html = `
        
        <div class=" col-4 mb-4">
            <img class="ml-3 myimg" style="border-radius: 2%;" src="data:image/jpeg;base64,${item.photo}" alt="" >
            <div class="name">${item.meals_name}</div>
            <div class="d-flex money">
                <div class="fs-20 ">$</div>
                <div class="price" id="price-1">${item.price}</div>
            </div>
            <button id="aa" class="score ml-5" onclick="showShoppingCar('${item.photo}' , '${item.meals_name}' , ${item.price});">加入購物車</button>
        </div>    
                        `;
          container.append(html);

          document.getElementById("aa").onclick = function aa() {
            // console.log("名字",responseData);
          };
        });
      }
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
      console.error("AJAX 請求失敗:", textStatus, errorThrown);
    });
}
//抓限時優惠的菜單
function saleMenu(input_restaurant_name) {
  var form = new FormData();
  form.append("service", "saleMenu");
  form.append("restaurant_name", input_restaurant_name);

  $.ajax({
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    contentType: false,
    data: form,
    //後端傳回來的格式
    dataType: "json",
  })
    .done(function (responseData) {
      var container = $("#menu-container");

      container.empty();
      if (responseData.length > 0) {
        responseData.forEach(function (item) {
          let nowDateTime = new Date();
          let end_time = new Date(item.end_time);
          let saleTimeCount = end_time - nowDateTime;
          let saleTime = Math.round(saleTimeCount / (1000 * 60 * 60));
          console.log("saleTimeCount : " + saleTimeCount);
          console.log("saleTime : " + saleTime);
          console.log("1",item);
          var html = `
          <div class=" col-4 mb-4 position-relative" >
            <img class="ml-3 myimg"  src="data:image/jpeg;base64,${item.photo}" alt="" > 
            <span class="countDown">倒數<span class="countDownTime me-1">${saleTime}</span>小時<span>!!</span></span>
            <div class="name">${item.meals_name}</div>
            <div class="d-flex " style="justify-content: center;">
              <div class="fs-20 ">$</div>
              <div class="price" id="price-1" style="text-decoration: line-through;">${item.origin_price}</div>
              <b><i><div class="fs-20 ml-3" style="color: red;">$</div></i></b>
              <b><i><div class="price" id="price-1" style="color: red;">${item.sale_price}</div></i></b>
            </div>
            <div class="d-flex money">
              
            </div>
          <button class="score ml-5" onclick="showShoppingCar('${item.photo}' , '${item.meals_name}' , ${item.price});">加入購物車</button>
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

//渲染購物車
function showShoppingCar(photo, meals_name, price) {
  var form = new FormData();
  form.append("service", "queryShopCart");
  form.append("userid", "1");
  form.append("restaurantid", "1");

  $.ajax({
    url: "http://localhost/Swallab/swallab/back-end/detail.php",
    method: "POST",
    timeout: 0,
    processData: false,
    contentType: false,
    data: form,
    dataType: "json",
  })
    .done(function (responseData) {
      var container = $(".lan-papapapa");
      container.empty();

      var html = `
      <div class="row" style="text-align: center;">
        <div>
          <img src="data:image/jpeg;base64,${photo}" class="product-img">
        </div>
        <div class="product-details ml-3">
          <div class="items mt-3">${meals_name}</div>
          <div class="d-flex mt-4 ml-4">
            <span>$</span>
            <span class="prices" id="car-price-1">${price}</span>
          </div>
        </div>
        <div class="product-actions">
          <div class="ml-5 mt-3">
            <button type="button" class="btn btn-sm btn-outline-secondary rounded-button" 
              onclick="decrement('car-number-span-1', 'car-price-1', 'car-total-price-1')">-</button>
            <span class="number-span fs-20" id="car-number-span-1">0</span>
            <button type="button" class="btn btn-sm btn-outline-secondary rounded-button" 
              onclick="increment('car-number-span-1', 'car-price-1', 'car-total-price-1')">+</button>
            <div id="car-total-price-1" class="mt-3 ml-1">$0</div>
          </div>
        </div>
        <div class="d-flex align-items-center justify-content-center ml-5">
          <button class="btn btn-link trash" onclick="removeProduct('product-row-1')">
            <i class="fas fa-trash-alt"></i>
          </button>
        </div>
      </div>
    `;
      container.append(html);
      let count = 1;

      if (responseData.length > 0) {
        responseData.forEach(function (item) {
          count++;
          var itemHtml = `
          <div class="row" style="text-align: center;">
            <div>
              <img src="data:image/jpeg;base64,${item.photo}" class="product-img">
            </div>
            <div class="product-details ml-3">
              <div class="items mt-3">${item.meals_name}</div>
              <div class="d-flex mt-4 ml-4">
                <span>$</span>
                <span class="prices" id="car-price-${count}">${item.price}</span>
              </div>
            </div>
            <div class="product-actions">
              <div class="ml-5 mt-3">
                <button type="button" class="btn btn-sm btn-outline-secondary rounded-button" 
                  onclick="decrement('car-number-span-${count}', 'car-price-${count}', 'car-total-price-${count}')">-</button>
                <span class="number-span fs-20" id="car-number-span-${count}">0</span>
                <button type="button" class="btn btn-sm btn-outline-secondary rounded-button" 
                  onclick="increment('car-number-span-${count}', 'car-price-${count}', 'car-total-price-${count}')">+</button>
                <div id="car-total-price-${count}" class="mt-3 ml-1">$0</div>
              </div>
            </div>
            <div class="d-flex align-items-center justify-content-center ml-5">
              <button class="btn btn-link trash" onclick="removeProduct('product-row-1')">
                <i class="fas fa-trash-alt"></i>
              </button>
            </div>
          </div>
        `;
          container.append(itemHtml);
          // }
        });
      }

      var cartModal = new bootstrap.Modal(document.getElementById("cartModal"));
      cartModal.show();
    })
    .fail(function (jqXHR, textStatus, errorThrown) {
      console.error("AJAX 請求失敗:", textStatus, errorThrown);
    });
}
