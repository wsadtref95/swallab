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