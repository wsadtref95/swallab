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
    .then((response) => response.text())
    .then((text) => {
      messagesContainer.innerHTML = text;
      
      //留言的人uid是1的，就要有編輯刪除按鈕
      document.querySelectorAll('.test').forEach((message,index) => {
        if (message.dataset.uid == '1') {
          const editContainer = message.querySelector('#edit');
          if (editContainer) {
            editContainer.innerHTML = `
            <button class="myedit${index}" style="border-radius: 10px;color:red;padding:3px 10px; margin-right:10px; background-color: #efa47e;color:white">編輯</button>
            <button class="mydelete${index}" style="border-radius: 10px;color:red;padding:3px 10px; margin-right:10px; background-color: #efa47e;color:white">刪除</button>
            `;
          }
        }
        //點擊"修改"留言顯示的modal
       $(`.myedit${index}`).on("click", function () {
         console.log(`我是修改編輯${index}`);
         $("#testEdit").html(`<div class="modal fade" id="myModal2" data-bs-backdrop="static">
              <div class="modal-dialog" >
                  <div class="modal-content modal-bg" >
                      <!-- Modal Header -->
                      <div class="modal-header" >
                          <div>
                              <h4 class="modal-title" >修改留言</h4>
                          </div>
                          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                      </div>
                    
                      <form name="myForm" method="post" id="myForm" >
                          <!-- Modal body -->
                          <div class="modal-body p-4">
                              <label for="message">留言：</label>
                              <textarea id="editMessage" name="message" rows="5" class="form-control" required></textarea>
                          </div>
                          <!-- Modal footer -->
                          <div class="modal-footer d-flex justify-content-end align-items-center">
                              <button type="submit" form="myForm" class="btn " id="btnSubmit">確認修改</button>
                          </div>
                      </form>

                  </div>
              </div>
          </div>`);

         // 觸發修改的modal留言框
         var myModal = new bootstrap.Modal(document.getElementById("myModal2"));
         myModal.show();

         fetch("../php/myedit.php")
           .then((response) => response.text())
           .then((text) => {
             console.log(text);
             $("#editMessage").text(text)
           });
       });


        $(`.mydelete${index}`).on("click", function () {
          console.log(`修改編輯${index}`);
        });



      });
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





