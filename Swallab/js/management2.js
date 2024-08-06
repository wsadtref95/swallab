$().ready(function () {

    // 間隔時間控制
    function sleep(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    }

    // headers
    const headers = {
        // 'content-type': 'application/json'
        'Content-Type': 'application/x-www-form-urlencoded',
        // 'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    }

    // 獲得分類
    let getClass = path => {
        return fetch(`http://localhost/MySwallab/public/api/${path}`, { mode: 'cors' })
            .then(response => {
                return response.json()
                // return response.text()
            })
    }

    // 獲得原始資訊
    let connectDB = (path, body) => {
        return fetch(`http://localhost/MySwallab/public/api/${path}`, {
            method: 'POST',
            headers,
            body,
            mode: 'cors'
        }).then(response => response.json())
        // }).then(response => response.text())
    }

    // 按下編輯菜單
    $('#menuList').on('click', '.fa-pen', async function () {
        let myMenuListDiv = $(this).closest('.myMenuList');
        // console.log(myMenuListDiv[0]['id']);
        let id = myMenuListDiv[0]['id'];
        modifyFormCon.classList.remove('d-none');
        let body = new URLSearchParams({ myFoodId: id }).toString();
        // console.log(body);

        let data = await connectDB('getsinglemenu', body)
        // console.log(data);
        const { meals_name, price, photo } = data;
        // 照片
        // console.log(data[0]['photo']);
        let img = $('<img>');
        img.prop('src', `http://localhost/MySwallab/public/${photo}`);
        $('#myPhotoResult').append(img);
        // 價格
        $('#myFoodPrice').val(price);
        // 名稱
        $('#myFoodName').val(meals_name);
        // 給btn一個id
        document.getElementById('modifyMenuBtn').dataset.id = id;
    });

    // 送出編輯後的菜單
    $('#modifyMenuBtn').on('click', async function (event) {
        event.preventDefault();
        let id = document.getElementById('modifyMenuBtn').dataset.id;
        // console.log(id);
        let body = new URLSearchParams({ myFoodId: id }).toString();
        // console.log(body);

        let data = await connectDB('getsinglemenu', body)
        const { meals_name, price } = data;
        // let price = data[0]['price'];
        // let mealName = data[0]['meals_name'];
        // console.log(price, mealName);
        let updatePrice = $('#myFoodPrice').val();
        let updateMealName = $('#myFoodName').val();
        // console.log(updatePrice, updateMealName);
        // console.log(price == updatePrice);
        let mySubmitResult = '';
        if (price == updatePrice && meals_name == updateMealName) {
            // console.log('並未修改內容');
            mySubmitResult = '並未修改內容';
        } else {
            let body = new URLSearchParams({ id, updatePrice, updateMealName }).toString();
            // fetch(`http://localhost/myProj/php/management_menu1.php/updateMenu`, {
            //     method: 'POST',
            //     headers,
            //     body
            // }).then(response => response.text())
            // .then(data => {

            let data = await connectDB('updatemenu', body);
            console.log(data);
            const { status } = data;
            if (status == 'ok') {
                mySubmitResult = '存檔成功';
            } else {
                mySubmitResult = '存檔失敗';
            }

            // })
        }
        $('#mySubmitResult').text(mySubmitResult);
        displayMenu(); // 刷新菜單
        await sleep(2500);
        $('#mySubmitResult').text('');
        // mySubmitResult.innerText = '';
        if (mySubmitResult == '存檔成功') {
            modifyFormCon.classList.add('d-none');
            $('#myPhotoResult').html('');
        }

        // console.log(mySubmitResult);
    })

    // 刪除菜單
    $('#menuList').on('click', '.fa-trash-can', function () {
        deleteFormCon.classList.remove('d-none');
        // console.log('刪除', this);
        let myMenuListDiv = $(this).closest('.myMenuList');
        // console.log(myMenuListDiv[0]['id']);
        let id = myMenuListDiv[0]['id'];
        // console.log(id);
        // 給btn一個id 先移除就的再賦予新的
        $('.colBtn:nth-child(2)').removeAttr('data-id').attr('data-id', id);
    })

    // 按下確定刪除後
    $('.colBtn:nth-child(2)').on('click', async function () {
        // console.log(this);
        let id = $(this).attr('data-id');
        console.log(id);
        let body = new URLSearchParams({ id }).toString();
        let data = await connectDB('deletemenu', body);
        console.log(data);
        let { status } = data;
        // console.log(status);

        let deleteResult = '';
        if (status == 'ok') {
            deleteResult = '刪除成功';
        } else {
            deleteResult = '刪除失敗';
        }
        $('#deleteResult').text(deleteResult);
        displayMenu(); // 刷新菜單
        await sleep(2500);
        $('#deleteResult').text('');
        deleteFormCon.classList.add('d-none');

    })

    // 顯示菜單清單
    let displayMenu = async () => {

        let response = await fetch('http://localhost/MySwallab/public/api/getmenu')
        let data = await response.json();

        // console.log(data);
        let html = '';

        data.forEach(item => {
            let { className, meals_name, photo, price, id } = item;
            // console.log(className);
            // console.log(meals_name);

            html += `
                <div class="myMenuList row" id="${id}">
                    <div class="col-2">${className}</div>
                    <div class="col-2">
                        <img src="http://localhost/MySwallab/public/${photo}">
                    </div>
                    <div class="col-2">${meals_name}</div>
                    <div class="col-2">${price}</div>
                    <div class="col-2">
                        <i class="fa-solid fa-pen"></i>
                        <i class="fa-solid fa-trash-can"></i>
                    </div>
                </div>
            `;

        });

        $('#menuList').html(html);


    }
    displayMenu();

    // 點擊新增 將分類顯示到螢幕上
    let displayClassList = async () => {
        let data = await getClass('getfoodclass'); // laravel -> ok
        // console.log(data);
        let html = '<option disabled selected>請選擇...</option>'

        for (let i = 0; i < data.length; i++) {
            const element = data[i]['className'];
            // console.log(element);
            html += `<option value=${data[i]['class_num']}>${element}</option>`
        }
        // console.log(html);

        $(`#classification`).html(html);
    }

    // 關閉
    $('#editMenu').on('click', () => {
        newForm.classList.remove('d-none');
        // 顯示分類
        displayClassList();
    })

    $('#myClose').on('click', () => {
        newForm.classList.add('d-none');
    })

    $('#myClose2').on('click', () => {
        modifyFormCon.classList.add('d-none');
        $('#myPhotoResult').html('');
    })

    $('#myClose3').on('click', () => {
        deleteFormCon.classList.add('d-none');
    })
    $('.colBtn:nth-child(1)').on('click', () => {
        deleteFormCon.classList.add('d-none');
    })


    // 顯示圖片
    document.getElementById('foodPhoto').addEventListener('change', function (event) {
        // $('#foodPhoto').on('change', event =>{

        // console.log(event);
        let file = event.target.files[0];
        if (file) {
            let reader = new FileReader();
            reader.onload = function (event) {
                let img = document.createElement('img');
                img.src = event.target.result;

                // Clear the previous image
                let preview = document.getElementById('photoResult');
                preview.innerHTML = '';
                preview.appendChild(img);
            }
            reader.readAsDataURL(file);
        }

    });

    // 傳送表單
    $('#addMenuBtn').on('click', async event => {
        event.preventDefault();
        // 檢查分類不能重複填寫
        let foodPrice = $('#foodPrice').val();
        let foodName = $('#foodName').val();
        let classification = $('#classification').val();
        let addClass = $('#addClass').val();
        // console.log(foodPrice);
        // console.log(foodName);
        // console.log(classification);
        // console.log(addClass);
        let myClass = classification ? classification : addClass


        // 檢查新增類別的項目是否有存在
        let data = await getClass('getmenu');
        // console.log(data);
        let dataList = [];
        data.forEach(element => {
            // console.log(element);
            let { className } = element;
            dataList.push(className);
        });
        // for (let i = 0; i < data.length; i++) {
        //     // console.log(data[i]['class']);
        //     dataList.push(data[i]['class'])
        // }
        // console.log(dataList.includes(addClass))

        let resultText = '';
        if (classification && addClass) {
            // console.log('請輸入正確的分類');
            resultText = '請輸入正確的分類';
        }
        else if (dataList.includes(addClass)) {
            // console.log('餐點分類已存在');
            resultText = '餐點分類已存在';
        }
        else if (foodPrice == '' || foodName == '' || myClass == '') {
            // console.log('請將表格填寫完成');
            resultText = '請將表格填寫完成';
        }
        else {
            let body = new FormData(editForm);
            // console.log(body);

            let response = await fetch('http://localhost/MySwallab/public/api/insertmenu', {
                method: 'POST',
                body
            })

            let result = await response.json();
            // console.log(result);
            let { status } = result
            // console.log('status : ', status);

            if (status == 'ok') {
                resultText = '存檔成功';
            } else {
                resultText = '存檔失敗';
            }
        }
        submitResult.innerText = resultText;
        if (resultText == '存檔成功') {
            displayMenu(); // 刷新菜單
            displayClassList(); // 刷新分類
            photoResult.innerText = '新增食品照片';
            editForm.reset();
        }
        await sleep(2500);
        submitResult.innerText = '';
    })

})