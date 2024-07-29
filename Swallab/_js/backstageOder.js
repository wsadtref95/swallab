// 訂單狀況

// document.getElementById('stopOrder').addEventListener('click', function () {
//     stopOrder.style.display = 'none';
//     recoverOrder.style.display = 'block';

// }) 
document.addEventListener("DOMContentLoaded", function () {
    const stopOrderBtn = document.getElementById("stopOrder");
    const recoverOrderBtn = document.getElementById("recoverOrder");

    // 檢查 localStorage 中的按鈕狀態
    const orderStatus = localStorage.getItem("orderStatus");

    if (orderStatus === "stopped") {
        stopOrderBtn.classList.add("d-none");
        recoverOrderBtn.classList.remove("d-none");
    } else {
        stopOrderBtn.classList.remove("d-none");
        recoverOrderBtn.classList.add("d-none");
    }

    stopOrderBtn.addEventListener("click", function () {
        stopOrderBtn.classList.add("d-none");
        recoverOrderBtn.classList.remove("d-none");
        localStorage.setItem("orderStatus", "stopped");
    });

    recoverOrderBtn.addEventListener("click", function () {
        recoverOrderBtn.classList.add("d-none");
        stopOrderBtn.classList.remove("d-none");
        localStorage.setItem("orderStatus", "running");
    });
});
// ================================