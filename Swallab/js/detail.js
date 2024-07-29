// 按下愛心
document.getElementById('hearticon').addEventListener('click', function() {
    this.classList.toggle('fa-regular');
    this.classList.toggle('fa-solid');
});
// top
document.getElementById('top').addEventListener('click', function() {
    window.scrollTo({
        top: 0,
        
    });
});
//留言區顯示更多
function showMore (elenentId){
    //抓id
    let comment = document.getElementById(elenentId);
    //改變屬性從none變成顯示
    comment.style.display = "flex";
}

