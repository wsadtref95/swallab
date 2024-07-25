$().ready(function () {

    $('#editMenu').on('click', () => {
        newForm.classList.remove('d-none');

        // 顯示分類
        fetch('http://localhost/myProj/management_menu1.php/getClass')
        .then(response => {
            return response.json()
            // return response.text()
        }).then(data => {
            // console.log(data);
            // console.log(id);
            let html = '<option disabled selected>請選擇...</option>'

            for (let i = 0; i < data.length; i++) {
                const element = data[i]['class'];
                // console.log(element);
                html += `<option value=${data[i]['class_num']}>${element}</option>`
            }
            // console.log(html);

            $(`#classification`).html(html);
        })
    })

    $('#myClose').on('click', () => {
        newForm.classList.add('d-none');
    })

    // headers
    const headers = {
        'content-type': 'application/x-www-form-urlencoded'
    }



    
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
    $('#editMenuBtn').on('click', async event => {
        event.preventDefault();
        
        let body = new FormData(editForm);
        body = new URLSearchParams(body).toString();
        // console.log(body);
    
        let response = await fetch('http://localhost/myProj/insertMenu.php', {
            method: 'POST',
            headers,
            body
        })
    
        let result = await response.text();
        console.log(result);
    })
    

})