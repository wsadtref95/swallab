// icon 替換 start
function showPopup() {
    document.getElementById('popup').style.display = 'block';
    document.getElementById('popupBlog').style.display = 'block';
    document.getElementById('popupRest').style.display = 'block';
}

function hidePopup() {
    document.getElementById('popup').style.display = 'none';
    document.getElementById('popupBlog').style.display = 'none';
    document.getElementById('popupRest').style.display = 'none';
}


document.getElementById('popupBlog').addEventListener('click', function () {
    document.querySelector('.theicon').style.backgroundImage = 'url("../_images/nav_icon/blog.png")';
});

document.getElementById('popupRest').addEventListener('click', function () {
    document.querySelector('.theicon').style.backgroundImage = 'url("../_images/nav_icon/restaurant.png")';
});
//  icon 替換 end

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
window.onclick = function (e) {
    e.preventDefault();
    document.getElementById('myDropdown').style.display = "none";
    document.getElementById('myDropdown2').style.display = "none";
}