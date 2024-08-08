document.getElementById("top").addEventListener("click", function () {
  window.scrollTo({ top: 0, behavior: "smooth" });
});

$(".noColorHeart").on("click", function () {
  $("#heart").css({
    display: "inline",
    color: "red",
  });
  $(this).css({
    display: "none",
  });
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
  //const form=document.getElementById("myform")
  const messagesContainer = document.getElementById("messages-container");

  // 更新留言列表的函數
  const updateMessages = () => {
    fetch("../php/messageOnWeb.php")
      .then((response) => response.text())
      .then((text) => {
        messagesContainer.innerHTML = text;

        //留言的人uid是1的，就要有編輯+刪除按鈕
        document.querySelectorAll(".test").forEach((message, index) => {
          if (message.dataset.uid == "1") {
            const editContainer = message.querySelector("#edit");
            if (editContainer) {
              editContainer.innerHTML = `
                <button class="myedit" data-index="${index}" data-mid="${message.dataset.mid}" style="border-radius: 10px;color:red;padding:3px 10px; margin-right:10px; background-color: #efa47e;color:white">編輯</button>
                <button class="mydelete" data-index="${index}" data-mid="${message.dataset.mid}" style="border-radius: 10px;color:red;padding:3px 10px; margin-right:10px; background-color: #efa47e;color:white">刪除</button>
                `;
            }
          }
        });

        // "編輯"按鈕點開的modal
        document.addEventListener("click", function (event) {
          if (event.target.classList.contains("myedit")) {
            const index = event.target.dataset.index;
            const dataMid = event.target.dataset.mid;

            console.log(`我是修改編輯${index}`);

            $("#testEdit")
              .html(`<div class="modal fade modal2" id="myModal2" data-bs-backdrop="static">
              <div class="modal-dialog">
                  <div class="modal-content modal-bg">
                      <!-- Modal Header -->
                      <div class="modal-header">
                          <div>
                              <h4 class="modal-title">修改留言</h4>
                          </div>
                          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                      </div>
                    
                      <form name="myFormUpdate" method="post" id="myEditForm">
                          <!-- Modal body -->
                          <div class="modal-body p-4">
                              <label for="message">留言：</label>
                              <textarea id="editMessage" rows="5" class="form-control" required></textarea>
                          </div>
                          <!-- Modal footer -->
                          <div class="modal-footer d-flex justify-content-end align-items-center">
                              <button type="submit" form="myForm" class="btn" id="btnUpdate">確認修改</button>
                          </div>
                      </form>
                  </div>
              </div>
              </div>`);

            // 觸發修改的modal留言框
            var myModal2 = new bootstrap.Modal(
              document.getElementById("myModal2")
            );
            myModal2.show();

            fetch(`../php/myedit.php?id=${dataMid}`)
              .then((response) => {
                return response.text();
              })
              .then((text) => {
                console.log(`獲取到的留言內容:`, text);
                // 更新 modal 中的輸入框內容
                $("#editMessage").val(text);
              })
              .catch((error) => {
                console.error(`編輯內容有錯:`, error);
              });

            //修改更新留言
            $("#btnUpdate").on("click", function () {
              event.preventDefault();
              let editMessage = document.getElementById("editMessage").value;
              console.log("修改留言的dataMid", dataMid);
              console.log("新留言：", editMessage);
              fetch(`../php/myUpdate.php?id=${dataMid}&message=${editMessage}`)
                .then((response) => response.text())
                .then((text) => {
                  console.log(text);

                  // 提交成功後關閉 modal (bootstrap的)
                  const modalElement = document.querySelector(".modal2");
                  const modal = bootstrap.Modal.getInstance(modalElement);
                  if (modal) {
                    modal.hide();
                  }

                  // 提交成功後更新留言列表
                  updateMessages();

                  // // 清空表單
                  // form.reset();
                })
                .catch((error) => console.error("修改留言有錯:", error));
            });
          }
        });

        // "刪除"按鈕點開的modal
        document.addEventListener("click", function (event) {
          if (event.target.classList.contains("mydelete")) {
            const index = event.target.dataset.index;
            const dataMid = event.target.dataset.mid;
            // console.log(event.target);

            console.log(`我是刪除${index}`);

            $("#testEdit")
              .html(`<div class="modal fade modal3" id="myModal3" data-bs-backdrop="static">
              <div class="modal-dialog">
                  <div class="modal-content modal-bg">
                      <!-- Modal Header -->
                      <div class="modal-header">
                          <div>
                              <h4 class="modal-title">刪除留言</h4>
                          </div>
                          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                      </div>
                    
                      <form name="myDeleteForm" method="post" id="myDeleteForm">
                          <!-- Modal body -->
                          <div class="modal-body p-4">
                              <label for="message">留言：</label>
                              <p id="deleteMessage"class="form-control" ></p>
                          </div>
                          <!-- Modal footer -->
                          <div class="modal-footer d-flex justify-content-end align-items-center">
                              <button type="button" class="btn btn-danger deleteMessage" data-mid="${dataMid}">確認</button>
                              <button type="submit" form="myDeleteForm" class="btn" data-bs-dismiss="modal">取消</button>
                          </div>
                      </form>
                  </div>
              </div>
          </div>`);

            // 觸發修改的modal留言框
            var myModal3 = new bootstrap.Modal(
              document.getElementById("myModal3")
            );
            myModal3.show();

            fetch(`../php/myedit.php?id=${dataMid}`)
              .then((response) => {
                return response.text();
              })
              .then((text) => {
                console.log(`獲取到的留言內容:`, text);
                // 更新 modal 中的輸入框內容
                $("#deleteMessage").text(text);
              })
              .catch((error) => {
                console.error(`刪除內容有錯:`, error);
              });

            $(".deleteMessage").on("click",function(){
              fetch(`../php/myDelete.php?id=${dataMid}`)
                .then((response) => {
                  return response.text();
                })
                .then((text) => {
                  console.log(`獲取到的留言內容:`, text);
                  //$(".test").css('display','none');
                  myModal3.hide();
                  updateMessages();
                })
                .catch((error) => {
                  console.error(`留言刪不掉:`, error);
                });
            })


          }
        });
      })

      .catch((error) => console.error("資料庫抓留言最後有錯", error));
  };

  //新增留言
  let btnSubmit = document.getElementById("btnSubmit");
  btnSubmit.onclick = (event) => {
    event.preventDefault(); // 防止默認表單提交行為
    console.log("送出按鈕");

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
        myForm.reset();
      })
      .catch((error) => console.error("新增留言失敗:", error));
  };

  // 初次載入頁面時加載留言
  updateMessages();
};

