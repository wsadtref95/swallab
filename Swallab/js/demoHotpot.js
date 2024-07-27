document.getElementById("top").addEventListener("click", function () {
  window.scrollTo({ top: 0, behavior: "smooth" });
});

$(".noColorHeart").on("click", function () {
  $("#heart").css({
    "display": "inline",
    "color":"red"
  });
  $(this).css({
    "display":"none"
  })
});
$("#heart").on("click", function () {
  $(".noColorHeart").css({
    display: "inline",
  });
  $(this).css({
    display: "none",
  });
});


//留言表單的送出+載入更新留言(新->舊)
window.onload = () => {
  const button = document.getElementById("btnSubmit");
  const form = document.getElementById("myForm");
  const messagesContainer = document.getElementById("messages-container");

  // 更新留言列表的函數
  const updateMessages = () => {
    fetch("../php/messageOnWeb.php")
      .then((response) => {
        console.log(response);
        return response.text();
      })
      .then((text) => {
        // console.log(text);
        messagesContainer.innerHTML = text;
      })
      .catch((error) => console.error("資料庫抓留言最後有錯", error));
  };

  button.onclick = (event) => {
    event.preventDefault(); // 防止默認表單提交行為

    fetch("../php/message.php", {
      method: "POST",
      body: new FormData(myForm), // 使用 FormData 來提交表單數據
    })
      .then((response) => response.text())
      .then((text) => {
        console.log(text);

        // 提交成功後關閉 modal (bootstrap的)
        const modalElement = document.querySelector(".modal");
        const modal = bootstrap.Modal.getInstance(modalElement);
        if (modal) {
          modal.hide();
        }

        // 提交成功後更新留言列表
        updateMessages();

        // 清空表單
        form.reset();
      })
      .catch((error) => console.error("Error:", error));
  };

  // 初次載入頁面時加載留言
  updateMessages();
};