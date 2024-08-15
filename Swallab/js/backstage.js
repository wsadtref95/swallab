
// 判斷是否登入
const user = localStorage.getItem('user');
const role = localStorage.getItem('role');
// if (!user || role != 'admin') {
//     window.location.href = 'http://localhost/swallab/Swallab/login/login.html';
// };


export const user_id = localStorage.getItem('user_id');
console.log('user_id : ', user_id);

// 登出
$('#logout').on('click', async () => {
    localStorage.clear();
    window.location.href = 'http://localhost/swallab/Swallab/login/login.html';
})

// 間隔時間控制
export function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}