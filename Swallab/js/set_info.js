$().ready(function () {

    // 時間控制
    let sleep = ms => new Promise(resolve => setTimeout(resolve, ms));

    // 顯示已輸入過的資訊
    let getInfo = (async () => {
        // 編號一號
        const url = 'http://localhost/MySwallab/public/api/restaurantinfo/1';
        let response = await fetch(url);
        let data = await response.json();
        console.log(data);
        let { users, address, avg_price } = data;
        if ({ users }) {
            // console.log(restaurant_name);
            // console.log(own[0].name);
            $('#restaurantName').attr('value', users.name);
            if (users.phone) {
                $('#restaurantTel').attr('value', users.phone);
                $('#restaurantAddress').attr('value', address);
                $('#restaurantAverage').attr('value', avg_price);
            }

        }
    })()

    // 取得分類
    let getRestClass = async () => {
        const url = 'http://localhost/MySwallab/public/api/restaurantClass';
        let response = await fetch(url);
        let data = await response.json();
        // let data = await response.test();
        // console.log(data);
        let myHtml = '<option disabled selected>請選擇...</option>';
        data.forEach(({ id, restclass }) => {
            // console.log(id);
            // console.log(name);
            myHtml += `<option value=${id}>${restclass}</option>`
        });
        $('#restaurantClassification').html(myHtml);
    }
    getRestClass();

    // 表單更新
    document.getElementById('restaurantInfo').addEventListener('submit', async event => {
        event.preventDefault();
        const headers = {
            // 'content-type': 'application/x-www-form-urlencoded'
            'content-type': 'application/json'
        }
        const url = 'http://localhost/MySwallab/public/api/restaurantinfo/update'
        // const body = new FormData(restaurantInfo);
        const formData = new FormData(event.target);
        let restaurantName = formData.get('restaurantName');
        let restaurantTel = formData.get('restaurantTel');
        let restaurantAddress = formData.get('restaurantAddress');
        let restaurantAverage = formData.get('restaurantAverage');
        let restaurantClassification = formData.get('restaurantClassification');
        const body = JSON.stringify(Object.fromEntries(formData));
        let result = '';
        if (restaurantName && restaurantTel && restaurantAddress && restaurantAverage && restaurantClassification) {
            let response = await fetch(url, {
                method: 'POST',
                headers,
                body
            })
            let data = await response.json();
            console.log(data);
            let { status } = data;
            if(status == 'ok') {
                result = '存檔成功';
            } else {
                result = '存檔失敗';
            }
        } else {
            result = '表格尚未填寫完成';
        }

        $('#submitResult').text(result);
        await sleep(3000);
        $('#submitResult').text('')
    })


})