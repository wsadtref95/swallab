function Orders() {
    return <React.Fragment>
        <div classNameName="row mt-5 myRecordsTemp align-self-center">
            <div classNameName="col-2">
                <div classNameName="myRecordsContainer align-self-center">
                    <img src="../images/headpage_mainphoto/食記_1.jpeg" alt="" />
                </div>
            </div>
            <div classNameName="col-6">
                {/* title */}
                <div classNameName="row myRecordsTitle">
                    <a href="#"><span>(餐廳名)</span></a><br />
                </div>
                {/* info */}
                <div classNameName="row myRecordsInfo container">
                    <span>
                        <span>(幾)</span>份<span>($$$)</span>的<span>(餐點)</span>
                    </span>
                    <span>
                        <span>(幾)</span>份<span>($$$)</span>的<span>(餐點)</span>
                    </span>
                    <span>
                        <span>(幾)</span>份<span>($$$)</span>的<span>(餐點)</span>
                    </span>
                </div>
            </div>
            <div classNameName="col-2">
                <span>訂單金額</span>
                <span>$($$$$) NT</span>
            </div>
            <div classNameName="col-2 myRecordsBtn">
                <span>(YYYYMMDD<br />HHMM )</span>
                <a href="">
                    <button classNameName="btn"> 檢視內容 </button>
                </a>
            </div>
        </div>
    </React.Fragment>
}

{/* 我的收藏 */ }
function Favorites() {
    return <React.Fragment>

        <div className="row mt-5 myRecordsTemp align-self-center">
            <div className="col-2">
                <div className="myRecordsContainer align-self-center">
                    <img src="../images/headpage_mainphoto/食記_1.jpeg" alt="" />
                </div>
            </div>
            <div className="col-6">
                {/* title */}
                <div className="row myRecordsTitle">
                    <a href="#"><span>(餐廳名)</span></a><br />
                </div>
                {/* info */}
                <div className="row myRecordsInfo container">
                    <span>
                        <span>(5)</span><i className="fa-solid fa-star mt-1"></i><span>均消$</span>($$$)-($$$)
                    </span>
                    <span>
                        <span>營業時間：</span><span>(HH):(MM)-(HH):(MM)</span>
                    </span>
                    <span>
                        <span>(台北市大安區XX路)</span>
                    </span>
                </div>
            </div>
            <div className="col-2">

            </div>
            <div className="col-2 myRecordsBtn">
                <span>(YYYYMMDD<br />HHMM )</span>
                <div className="text-center">
                    <i className="fa-solid fa-heart"></i>
                </div>
            </div>
        </div>
    </React.Fragment>
}

{/* 我的評論 */ }
function Comments() {
    return <React.Fragment>

        <div className="row mt-5 myRecordsTemp align-self-center">
            <div className="col-2">
                <div className="myRecordsContainer align-self-center">
                    <img src="../images/headpage_mainphoto/食記_1.jpeg" alt="" />
                </div>
            </div>
            <div className="col-8">
                {/* title */}
                <div className="row myRecordsTitle">
                    <a href="#"><span>(餐廳名)</span></a><br />
                </div>
                {/* info */}
                <div className="row myRecordsInfo container">
                    <span>
                        <span>(台北市大安區XX路)</span>
                    </span>
                    <span>
                        <span>(5)</span><i className="fa-solid fa-star mt-1"></i>
                    </span>
                    <span style="border: 1px solid black;">
                        <span>(評論內容)</span>
                    </span>
                </div>
            </div>
            <div className="col-2 myRecordsBtn">
                <span>(YYYYMMDD<br />HHMM )</span>
                <div className="text-center">
                    <i className="fa-solid fa-pen-to-square"></i>
                    &nbsp;&nbsp;&nbsp;
                    <i className="fa-solid fa-trash-can"></i>
                </div>
            </div>
        </div>
    </React.Fragment>
}

function Notes() {
    return (
        {/* 我的食記 */}
        <div className="row mt-5 myRecordsTemp align-self-center">
            <div className="col-2">
                <div className="myRecordsContainer align-self-center">
                    <img src="../images/headpage_mainphoto/食記_1.jpeg" alt="" />
                </div>
            </div>
            <div className="col-8">
                {/* title */}
                <div className="row myRecordsTitle">
                    <a href="#"><span>(食記標題)</span></a><br />
                </div>
                {/* info */}
                <div className="row myRecordsInfo container-fluid" style="height: 60px;">
                    <span style="border: 1px solid black;">
                        <span>(食記內容)</span>
                    </span>
                </div>
            </div>

            <div className="col-2 myRecordsBtn">
                <span>(YYYYMMDD<br />HHMM )</span>
                <div className="text-center">
                    <i className="fa-solid fa-pen-to-square"></i>
                    &nbsp;&nbsp;&nbsp;
                    <i className="fa-solid fa-trash-can"></i>
                </div>
            </div>
        </div>
)}