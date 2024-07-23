$().ready(function () {


    // // 資料庫練習
    // // 抓分類
    let getClass = id => {
        fetch('http://localhost/myProj/management_menu2.php/getClass')
            .then(response => {
                return response.json()
                // return response.text()
            }).then(data => {
                // console.log(data);
                console.log(id);
                let html = '<option disabled selected>請選擇...</option>'

                for (let i = 0; i < data.length; i++) {
                    const element = data[i]['class'];
                    // console.log(element);
                    html += `<option value=${data[i]['id']}>${element}</option>`
                }
                // console.log(html);

                $(`#className${id}`).html(html);
            })
    }
    getClass(1);


    // fetch取得名更及價錢
    let getDetail = (parts, body) => {
        const headers = {
            'content-type': 'application/x-www-form-urlencoded'
        }
        // fetch(`http://localhost/myProj/management_menu2.php/getClassList/${this.value}`, {
        return fetch(`http://localhost/myProj/management_menu2.php/${parts}`, {
            // 用post
            method: 'post',
            headers: headers,
            body: body
        }).then(response => {
                return response.json()
                // return response.text()
            })

    }

    // 取的類別後產出餐點名稱
    $('#discountForm').on('change', '.col-4:nth-child(1) select', async function () {
        // console.log(this);
        // console.log(this.value);
        // console.log(this.id);
        let id = this.id.replace(/[^\d]/g, "");
        // console.log('id: ', id);

        // 抓名稱
        const body = new URLSearchParams({ classId: this.value }).toString();
        // console.log(body);
        let data = await getDetail('getClassList', body);
        console.log(data);
        let myHtml = '<option disabled selected>請選擇...</option>'

        for (let i = 0; i < data.length; i++) {
            const element = data[i][3];
            // console.log(element);
            myHtml += `<option value=${data[i]['id']}>${element}</option>`
        }
        // console.log(myHtml);
        $(`#mealName${id}`).html(myHtml);

    })

    // 顯示原始價格
    $('#discountForm').on('change', '.col-4:nth-child(2) select', async function () {
        // console.log(this);
        let id = this.id.replace(/[^\d]/g, "");
        // console.log('id: ', id);
        // let foodId = this.value;
        // console.log(foodId);
        const body = new URLSearchParams({ foodId: this.value }).toString();
        let data = await getDetail('getPrice', body);
        console.log(data);
        console.log(data[0].price);
        $(`#originalPrice${id}`).text(data[0].price);
    })






    let index = 1;


    // 檢查日期



    $('#discountForm').on('click', '.col-6:nth-child(4) input', function () {
        let id = this.id.replace(/[^\d]/g, "");
        let nowAttr = new Date().toISOString().slice(0, 16);
        // console.log(now);
        $(`#startTime${id}`).attr('min', nowAttr);
    })

    $('#discountForm').on('change', '.col-6:nth-child(4) input', function () {

        // let startTime = new Date($(`#startTime${index}`).val());
        let startTime = new Date($(`#${this.id}`).val());
        // console.log(this.id); // startTime1
        let id = this.id.replace(/[^\d]/g, "");
        // console.log( id);
        // console.log(startTime);
        let now = new Date();
        // console.log('index : ' + index);
        // console.log('value : ' + startTime);
        // console.log('now :' + now);
        if (startTime < now) {
            $(`#startTimeResult${id}`).text('開始時間不能小於當前時間');
            $(`#startTime${id}`).val('');
        } else {
            $(`#startTimeResult${id}`).text('');
            console.log(this);
            $(`#endTime${id}`).attr('min', $(this).val());
        }

        if ($(`#startTime${id}`).val()) {
            $(`#endTime${id}`).removeAttr('disabled');
        }
    });
    // ============================
    $('#discountForm').on('change', '.col-6:nth-child(5) input', function () {
        console.log(this.id); // endTime1
        let id = this.id.replace(/[^\d]/g, "");
        console.log(id);


        let endTime = new Date($(`#${this.id}`).val());
        let startTime = new Date($(`#startTime${id}`).val());
        if (endTime < startTime) {
            $(`#endTimeResult${id}`).text('結束時間不能小於開始時間');
            $(`#endTime${id}`).val('');
        } else {
            $(`#endTimeResult${id}`).text('');
        }
    })


    // 新增表單
    $('#addDiscount').on('click', function () {
        index++;
        getClass(index)
        console.log(index);
        let discountForm = `
        <div class="optionContainer mt-20" id="add${index}">
            <div class="newDiscountBtn">
                <h5><b>${index}</b></h5>
                <p><i onclick="removeCon('#add${index}')" class="fa-solid fa-trash-can"></i></p>
                </div>
                <div class="menuContainer row">
                
                    <div class="col-4">
                        <h5>餐點分類 : </h5>
                        <select id="className${index}" name="menuList${index}">
                            <option value="" disabled selected>請選擇...(動態)</option>
                            <option value="signature">招牌餐點</option>
                        <option value="individual">個人即享餐</option>
                    </select>
                    </div>
                    <div class="col-4">
                    <h5>餐點名稱 : </h5>
                    <select id="mealName${index}" name="menuName${index}">
                        <option value="" disabled selected>請選擇...(動態)</option>
                        <option value="signature">招牌餐點</option>
                        <option value="individual">個人即享餐</option>
                        </select>
                        </div>
                        <div class="col-4">
                            <h5>價格 : </h5>
                            <input type="number" name="menuPrice${index}">
                            <p>原始價格為 : <span id="originalPrice${index}">300(動態)</span></p>
                            </div>
                            <div class="col-6">
                                <h5>開始時間 : </h5>
                                <input type="datetime-local" id="startTime${index}" name="startTime${index}"         >
                                <p id="startTimeResult${index}"></p>
                </div>
                <div class="col-6">
                    <h5>結束時間 : </h5>
                    <input type="datetime-local" id="endTime${index}" name="endTime${index}" disabled>
                    <p id="endTimeResult${index}"></p>
                    </div>
                    </div>
                    </div>`;
        $('#addList').append(discountForm);
    })



})

// 移除


function removeCon(Con) {
    console.log(Con);
    $(Con).fadeOut(500, function () {
        $(this).remove();
    })
}
