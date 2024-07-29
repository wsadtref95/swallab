// // icon 替換 start
// function showPopup() {
//     document.getElementById('popup').style.display = 'block';
//     document.getElementById('popupBlog').style.display = 'block';
//     document.getElementById('popupRest').style.display = 'block';
// }

// function hidePopup() {
//     document.getElementById('popup').style.display = 'none';
//     document.getElementById('popupBlog').style.display = 'none';
//     document.getElementById('popupRest').style.display = 'none';
// }


// document.getElementById('popupBlog').addEventListener('click', function () {
//     document.querySelector('.theicon::after').style.content = "\f2e7";
// });

// document.getElementById('popupRest').addEventListener('click', function () {
//     document.querySelector('.theicon::after').style.contetn = "\f518";
// });

// //  icon 替換 end

// 當滑鼠經過時，顯示兩個 icon
document.getElementById('popup').addEventListener('mouseover', function () {
    console.log(123);
    document.getElementById('popupBlog').style.display = 'block';
    document.getElementById('popupRest').style.display = 'block';
});

// 當滑鼠離開時，只顯示已選擇的 icon
document.getElementById('popup').addEventListener('mouseout', function () {
    document.getElementById('popupBlog').style.display = 'none';
    document.getElementById('popupRest').style.display = 'none';
});

// 點擊時，更換顯示的 icon
document.getElementById('popupBlog').addEventListener('click', function () {
    // document.documentElement.style.setProperty('--icon-rest', 'var(--icon-blog)');
    document.documentElement.style.setProperty('--icon-rest', '\f2e7');
});

document.getElementById('popupRest').addEventListener('click', function () {
    // document.documentElement.style.setProperty('--icon-rest', 'var(--icon-rest)');
    document.documentElement.style.setProperty('--icon-rest', '\f518');
});


// 搜尋框
// 點擊輸入框，切換下拉選單的顯示和隱藏
function myFunction() {
    var dropdown = document.getElementById("myDropdown");
    if (dropdown.style.display === "none") {
        dropdown.style.display = "block";
    } else {
        dropdown.style.display = "none";
    }
}

function myFunction2() {
    var dropdown = document.getElementById("myDropdown2");
    if (dropdown.style.display === "none") {
        dropdown.style.display = "block";
    } else {
        dropdown.style.display = "none";
    }
}
// 搜尋框顯示
function fillInput(value) {
    document.getElementById('myInput').value = value;
    document.getElementById('myDropdown').style.display = "none";
    document.getElementById('myInput2').style.display = "block";
}

function fillInput2(value) {
    document.getElementById('myInput2').value = value;
    document.getElementById('myDropdown2').style.display = "none";
    document.getElementById('myInput1').style.display = "block";

    // SQL
    // 'myInput' 和 'myInput2' 的值作為查詢條件
}
// 點擊其他地方隱藏下拉

// 搜尋框
// 點擊輸入框，切換下拉選單的顯示和隱藏
function myFunction() {
    var dropdown = document.getElementById("myDropdown");
    if (dropdown.style.display === "none") {
        dropdown.style.display = "block";
    } else {
        dropdown.style.display = "none";
    }
}

function myFunction2() {
    var dropdown = document.getElementById("myDropdown2");
    if (dropdown.style.display === "none") {
        dropdown.style.display = "block";
    } else {
        dropdown.style.display = "none";
    }
}
// 搜尋框顯示
function fillInput(value) {
    document.getElementById('myInput').value = value;
    document.getElementById('myDropdown').style.display = "none";
    document.getElementById('myInput2').style.display = "block";
}

function fillInput2(value) {
    document.getElementById('myInput2').value = value;
    document.getElementById('myDropdown2').style.display = "none";
    document.getElementById('myInput').style.display = "block";

    // SQL
    // 'myInput' 和 'myInput2' 的值作為查詢條件
}
// 點擊其他地方隱藏下拉
window.onclick = function(event) {
    if (!event.target.matches('#myInput')) {
        var dropdown = document.getElementById("myDropdown");
        if (dropdown.style.display === "block") {
            dropdown.style.display = "none";
        }
    }

    if (!event.target.matches('#myInput2')) {
        var dropdown = document.getElementById("myDropdown2");
        if (dropdown.style.display === "block") {
            dropdown.style.display = "none";
        }
    }
}



// 暫存
/* 餐廳或食記 icon */
// .theicon {
//     height: 1.5em !important;
//     width: 4em;
//     /* background-size: 1.5em; */
//     /* background-repeat: no-repeat; */
//     /* z-index: 999; */
// }
// .theicon::after{
//     content: "\f2e7";
//     font-family: "Font Awesome 5 Free";
//     font-weight: 900;
// }

// .nav_mainbtn {
//     white-space: nowrap;
// }

// .icon {
//     height: 1.5em;
//     /* z-index:999; */
//     background-size: cover;
// }

// .filter_btn {
//     display: block;
//     margin-top: 1.5em;
//     white-space: nowrap;
//     z-index: 1;
// }

// 餐廳或食記 icon 觸發
// .popup {
//     display: none;
//     position: relative;
//     /* padding-top: 10%; */
//     top: 100%;
//     left: -25%;
//     width: 1.5em;
//     height: 1.5em;
//     /* background-image: url('./img/blog.png'); */
//     background-size: cover;
// }

// /* 食記 icon 彈出 */
// .popupBlog {
//     display: none;
//     position: relative;
//     /* top: 100%; */
//     width: 1.5em;
//     height: 1.5em;
// }
// .popupBlog::after{
//     content: "\f518";
//     font-family: "Font Awesome 5 Free";
//     font-weight: 900;
// }

// /* 餐廳 icon 彈出 */
// .popupRest {
//     display: none;
//     position: relative;
//     top: -100%;
//     left: 100%;
//     width: 1.5em;
//     height: 1.5em;
// }
// .popupRest::after{
//     content: "\f2e7";
//     font-family: "Font Awesome 5 Free";
//     font-weight: 900;
// }

// .logo {
//     height: 5em;
//     width: auto;
//     border-radius: 50%;
// }

// /* .btnPills{
//                 display: block; 
//                 margin-left: 10%; 
//                 margin-top: 1.5em; 
//                 white-space: nowrap; z-index: 1;
//             } */
// /* 搜尋框相關 */
// .dropdown-content a {
//     background-color: #fff;
//     color: black;
//     padding: 12px 16px;
//     text-decoration: none;
//     display: block;
//     border: 1px solid #ddd;
//     /* 淺色框線 */
//     box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
//     /* 立體感 */
//     position: absolute;
//     z-index: 99999 !important;

// }

// .dropdown-content a:hover {
//     background-color: rgba(111, 107, 107)
// }