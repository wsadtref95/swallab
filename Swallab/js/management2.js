$().ready(function () {

    $('#editMenu').on('click', () => {
        newForm.classList.remove('d-none');
    })

    $('#myClose').on('click', () => {
        newForm.classList.add('d-none');
    })

})