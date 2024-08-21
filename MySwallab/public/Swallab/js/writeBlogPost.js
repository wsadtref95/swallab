// CKEditor
ClassicEditor
            .create(document.querySelector('#editor'), {
                toolbar: ['heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote', 'imageUpload'],
                ckfinder: {
                    uploadUrl: 'upload.php' // 設置文件上傳 URL
                }
            })
            .catch(error => {
                console.error(error);
            });

// 實際用餐時間不能大於今天
let nowTime = new Date().toISOString().slice(0, 16)
console.log(nowTime);
$('#eatTime').attr('max', nowTime)

$('#eatTime').on('change', () => {
    let eatTime = new Date( $(`#${this.id}`).val() )
    let now = new Date();
    if (startTime < now) {
        $(`#startTimeResult${id}`).text('開始時間不能大於當前時間');
        $(`#startTime${id}`).val('');
    } else {
        $(`#startTimeResult${id}`).text('');
        console.log(this);
        $(`#endTime${id}`).attr('min', $(this).val());
    }
})