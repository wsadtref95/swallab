document.getElementById("top").addEventListener("click", function () {
  window.scrollTo({ top: 0, behavior: "smooth" });
});

//側邊欄-本週熱門
$(".custom-ul > div:nth-child(1)>img").on("click", function () {
  $(".title").text("");
  $(".col-9").text("");
  let hotTitle = `<div class="col-8 p-0">
                <div class="height500">
                    <img src="../images/bbq/hutong.jpg" class="img-fluid">
                    <div class="text-con">
                        <p class="ellipsis">胡同燒肉-燒肉食材新鮮就是王道，還有專人代烤、貼心解說服務，讓人怎能不愛呢。</p>
                        <p></p>
                        <p class="latestDate-1">2024/7/14</p>
                    </div>
                </div>
            </div>
            <div class="col-4 row p-0">
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/dessert/shichu.jpg">
                        <div class="text-con">
                            <p class="ellipsis">蒔初甜點五權店:清新可愛綠葡萄戚風蛋糕</p>
                            <p></p>
                            <p class="latestDate-1">2024/6/30</p>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/izakaya/woliu.jpeg">
                        <div class="text-con">
                            <p class="ellipsis">台中我流精緻烤物WOLIU 吃的很精緻 價格卻很平實</p>
                            <p></p>
                            <p class="latestDate-1">2024/6/15</p>
                        </div>
                    </div>
                </div>
            </div>`;
  let hot = `<div class="row">
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden" >
                            <div class="card-body p-0">
                                <img src="../images/hotpot/qinghj.jpg" alt="" class="img-fluid notesImage" >
                            </div>
                            <div class="card-footer align-items-center">
                                <p class="ellipsis notesTitle">【台中】青花驕麻辣鍋(崇德店)王品集團麻辣鍋、酸菜白肉鍋火鍋餐廳 牛三拼盛宴比臉大氣勢十足</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202489</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/kodo.png" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">全程專人代烤壽星優惠95折，KODO和牛燒肉</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202377</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/fengjian.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中-南屯區】燒肉風間｜套餐份量超多，桌邊服務超讚的啦</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202256</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/erlin.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">甜點秘境「貳林工作室」，必嚐ig爆紅「芋泥抹茶戚風三明治」超美味又超好拍！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202203</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/xuanri.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">懸日拉麵｜以水果入湯頭，主打新潮系的精緻創意拉麵店</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202189</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/shouren.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">MEN monster 挺有意思的香料拉麵，味道濃郁，但口感清爽充滿衝突的特色拉麵</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202138</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/roudd.png" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中西區】肉多多火鍋（台中廣三店）CP值超高的平價吃到飽火鍋 會員免費送肉</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202076</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/liyu.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中西區│離域Cafe-老宅咖啡館，多了新品千層酥的選擇，審計新村附近甜點咖啡美食推薦</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202010</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/xiaoms_qinmei.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中食記】西區近科博館老宅改建〔 小麥所居酒屋 〕台日結合創意料理，高人氣聚餐地點，深夜食堂好所在。</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201989</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/yuemc.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">月暮藏涮涮鍋 |台中西屯活體海鮮、日本和牛，浮誇貴氣裝潢+個人火鍋套餐499元起</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201956</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/overture.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中甜點推薦】Overture序曲 千層蛋糕水果蛋糕IG網美人氣名店！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201907</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/tangzhan.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中火鍋-湯棧 公益店，麻油雞鍋、剝皮辣椒鍋 營業到凌晨二點冷冬宵夜首選</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201896</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>`;
  $(".title").append(hotTitle);
  $(".col-9").append(hot);
});

// 側邊欄-火鍋
$(".custom-ul > div:nth-child(2)>img").on("click", function () {
  $(".col-9").text("");
  $(".title").text("");
  console.log(113);
  let hotPot = `<div class="row">
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden" >
                            <div class="card-body p-0">
                                <img src="../images/hotpot/qinghj.jpg" alt="" class="img-fluid notesImage" >
                            </div>
                            <div class="card-footer align-items-center">
                                <p class="ellipsis notesTitle">【台中】青花驕麻辣鍋(崇德店)王品集團麻辣鍋、酸菜白肉鍋火鍋餐廳 牛三拼盛宴比臉大氣勢十足</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202489</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/roudd.png" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中西區】肉多多火鍋（台中廣三店）CP值超高的平價吃到飽火鍋 會員免費送肉</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202076</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/yuemc.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">月暮藏涮涮鍋 |台中西屯活體海鮮、日本和牛，浮誇貴氣裝潢+個人火鍋套餐499元起</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201956</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/tangzhan.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中火鍋-湯棧 公益店，麻油雞鍋、剝皮辣椒鍋 營業到凌晨二點冷冬宵夜首選</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201896</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/kerou.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">嗑肉石鍋美術店 百樣自助吧吃到飽。北高雄首間嗑肉石鍋二代店</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201850</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/jiting.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">偈亭泡菜鍋| 台中超狂小火鍋，火鍋配料多到滿出來</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201803</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/youhg.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">有火鍋|台中南屯火鍋美食，麻辣湯居然可喝又不加牛油</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201796</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/shuanny.png" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">雲雀集團-涮乃葉日式涮涮鍋來基隆展店囉。火鍋吃到飽。雙和牛、海鮮吃到飽</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201768</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/piaoliang.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">漂亮火鍋 |台中火鍋吃到飽，20多種豐富海鮮、8款肉品吃到飽，哈根達斯、星巴克咖啡無限供應</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201733</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/liangszy.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中｜良食煮意有機鍋物：養生者天堂！有機葉菜無限續加的吃到飽火鍋！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201705</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/guoszy.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">[台中北屯區]蔬菜飲料自助吧吃到飽－鍋食主艺</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201696</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/hotpot/dingwang.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">鼎王麻辣鍋公益店，台中老字號麻辣鍋店，麻辣鴨血豆腐無限續</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201655</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>`;
  let hotPotTitle = `<div class="col-8 p-0">
                <div class="height500">
                    <img src="../images/hotpot/zhaort.jpg" class="img-fluid">
                    <div class="text-con">
                        <p class="ellipsis">台中 | 昭日堂燒肉鍋煮－近IKEA高CP值火鍋店，自助吧超多選擇讓你吃到飽</p>
                        <p class="latestDate-1">2024/7/16</p>
                    </div>
                </div>
            </div>
            <div class="col-4 row p-0">
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/hotpot/senxiang.jpg">
                        <div class="text-con">
                            <p class="ellipsis">台中｜森饗鍋物：絕美森林系火鍋店！人氣必點胡椒豬肚、川香酸菜魚</p>
                            <p class="latestDate-1">2024/7/15</p>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/hotpot/jiuwei.jpg">
                        <div class="text-con">
                            <p class="ellipsis">久違石頭火鍋｜台中超美復古鳥籠火鍋餐廳，不但有火烤兩吃，還有鮮蔬鍋料吃到飽！現在加購龍蝦不用100元！</p>
                            <p class="latestDate-1">2024/7/13</p>
                        </div>
                    </div>
                </div>
            </div>`;
  $(".col-9").append(hotPot);
  $(".title").append(hotPotTitle);
});

//側邊欄-燒肉
$(".custom-ul >div:nth-child(3)>img").on("click", function () {
  $(".col-9").text("");
  $(".title").text("");
  let bbq = `<div class="row">
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden" >
                            <div class="card-body p-0">
                                <img src="../images/bbq/kodo.png" alt="" class="img-fluid notesImage" >
                            </div>
                            <div class="card-footer align-items-center">
                                <p class="ellipsis notesTitle">全程專人代烤壽星優惠95折，KODO和牛燒肉</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202377</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/fengjian.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中-南屯區】燒肉風間｜套餐份量超多，桌邊服務超讚的啦</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202256</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/wuma.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">訂位很容易爆滿的知名台中燒肉店，屋馬菜單怎麼點才划算</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201889</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/shanjing.png" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">山鯨燒肉漢口店．一秒飛日本用餐還可以體驗穿和服拍美照！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201855</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/chaliu.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中日式燒肉推薦，不需要動手！專業代烤好滋味</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201832</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/sensen.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">森森燒肉-洲際店 雙人套餐家自助吧無限量吃到飽，限時120分鐘</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201797</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/smile.png" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">燒肉Smile－個人燒肉、生菜沙拉自助飲料吧</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201781</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/tanzml.jpeg" alt="" class="img-flui notesImaged">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">碳佐麻里精品燒肉｜燒肉界南霸天，無用餐時間限制</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201754</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/hongchao.jpeg" alt="" class="img-fluid notesImaged">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【紅巢燒肉工房】吃燒烤全程服務生代烤等吃就好～</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201732</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/laojing.jpeg" alt="" class="img-fluid notesImaged">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">專人剝蝦 老井極上燒肉 美村店 台中在地人推薦必吃 台中高級燒肉|銷魂A5和牛 雞湯冰沙無限續|老井訂位 |桌邊服務烤海鮮 和牛| 1公分超厚切牛舌</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201711</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/rourou.jpeg" alt="" class="img-fluid notesImaged">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中南屯||肉肉燒肉，單人用餐經濟實惠，雙人套餐高貴不貴!</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201678</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/bbq/hutong.jpg" alt="" class="img-fluid notesImaged">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">胡同燒肉-燒肉食材新鮮就是王道，還有專人代烤、貼心解說服務，讓人怎能不愛呢。</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201655</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>`;
  let bbqTitle = `<div class="col-8 p-0">
                <div class="height500">
                    <img src="../images/bbq/hutong.jpg" class="img-fluid">
                    <div class="text-con">
                        <p class="ellipsis">胡同燒肉-燒肉食材新鮮就是王道，還有專人代烤、貼心解說服務，讓人怎能不愛呢。</p>
                        <p></p>
                        <p class="latestDate-1">2024/7/14</p>
                    </div>
                </div>
            </div>
            <div class="col-4 row p-0">
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/bbq/anda.jpg">
                        <div class="text-con">
                            <p class="ellipsis">俺達の肉屋 | 台中日本和牛燒肉專賣店，台中米其林指南一星推薦。台中燒肉推薦</p>
                            <p></p>
                            <p class="latestDate-1">2024/6/30</p>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/bbq/chaliu.jpg">
                        <div class="text-con">
                            <p class="ellipsis">茶六燒肉堂公益店｜台中必吃燒肉，超難訂位的茶六，雙人和牛套餐好吃，有包廂營業到半夜2點</p>
                            <p></p>
                            <p class="latestDate-1">2024/6/15</p>
                        </div>
                    </div>
                </div>
            </div>`;
  $(".col-9").append(bbq);
  $(".title").append(bbqTitle);
});

//側邊欄-拉麵
$(".custom-ul>div:nth-child(4)>img").on("click", function () {
  $(".col-9").text("");
  $(".title").text("");
  let romen = `<div class="row">
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden" >
                            <div class="card-body p-0">
                                <img src="../images/ramen/xuanri.jpg" alt="" class="img-fluid  notesImage" >
                            </div>
                            <div class="card-footer align-items-center">
                                <p class="ellipsis notesTitle">懸日拉麵｜以水果入湯頭，主打新潮系的精緻創意拉麵店</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0  viewNumber">202189</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/shouren.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中 拉麵】MEN monster 挺有意思的香料拉麵，味道濃郁但口感清爽充滿衝突的特色拉麵</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0  viewNumber">202138</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/concept.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">La麺Knock Out│由日本人主廚坐鎮，以濃郁蝦濃湯為基底再加松露的拉麵超特別</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201878</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/yihe.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">伊禾白湯｜宛如在吃板前料理的醇厚牛白湯拉麵</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201854</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/chu.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">拉麵王者 濃郁好吃的家系拉麵 不用排隊就可以享受一碗熱騰騰的日式拉麵</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201832</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/songxi.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">:只有平日吃得到，雞湯濃醇肉超軟．宋囍拉麵</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201801</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/shanlan.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">山嵐拉麵安通溫泉店｜安通溫泉飯店內．精緻日式庭院景觀．泡湯後來碗拉麵吧!</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201791</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/youran.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">創作拉麵 悠然｜淡麗系拉麵的指標性名店！用多元食材創造新穎日式口味</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201774</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/fuwu.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">福屋｜超強素食拉麵，醇厚湯頭有著不輸葷食的鮮美風味</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201721</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/jinqc.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">金晴川拉麵，濃郁湯頭搭配超大塊叉燒</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201710</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/sato.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">麵處佐藤北海道拉麵，台灣台中西區，香濃開胃帶廣辣味噌拉麵</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201698</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/ramen/heixin.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中霧峰日式拉麵店～麵屋黑心，以雞白湯與雞清湯為主打，辣肉丁烤飯有特色！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201615</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>`;
  let romenTitle = `<div class="col-8 p-0">
                <div class="height500">
                    <img src="../images/ramen/shanxgy.jpg" class="img-fluid">
                    <div class="text-con">
                        <p class="ellipsis">【台中】山下公園 ラーメン 第六市場，常常需要排隊的拉麵店</p>
                        <p></p>
                        <p class="latestDate-1">2024/7/17</p>
                    </div>
                </div>
            </div>
            <div class="col-4 row p-0">
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/ramen/yuezun.jpg">
                        <div class="text-con">
                            <p class="ellipsis">「月樽拉麵精誠店」台中深夜食堂！柚見花香蝦湯拉麵、炙牛肉魂叉燒泡飯味道好驚艷！</p>
                            <p></p>
                            <p class="latestDate-1">2024/7/7</p>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/ramen/niuan.jpg">
                        <div class="text-con">
                            <p class="ellipsis">牛庵拉麵｜台中拉麵推薦，狸匠系列咖哩牛骨拉麵，超濃郁咖哩飯吃到飽，唐揚雞必點</p>
                            <p></p>
                            <p class="latestDate-1">2024/6/29</p>
                        </div>
                    </div>
                </div>
            </div>`;
  $(".col-9").append(romen);
  $(".title").append(romenTitle);
});

//側邊欄-居酒屋
$(".custom-ul>div:nth-child(5)>img").on("click", function () {
  $(".col-9").text("");
  $(".title").text("");
  let beer = `<div class="row">
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden" >
                            <div class="card-body p-0">
                                <img src="../images/izakaya/xiaoms_qinmei.jpg" alt="" class="img-fluid notesImage" >
                            </div>
                            <div class="card-footer align-items-center">
                                <p class="ellipsis notesTitle">【台中食記】西區近科博館老宅改建〔 小麥所居酒屋 〕台日結合創意料理，高人氣聚餐地點，深夜食堂好所在。</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201989</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/shibh.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【十八魂手串燒烤｜逢甲串燒烤】逢甲必吃平價串燒.逢甲宵夜居酒屋首選.用心的料理讓人無法抗拒的美味</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201876</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/rongshao_ntwenxin.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中居酒屋】容燒居酒屋 寵物友善餐廳推薦！還有狗狗專屬串燒好狗命炒飯</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201832</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/jiangjf.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中高人氣日式居酒屋｜將軍府勤美店，大啖比手掌大的大生蠔、串燒、特色清酒，菜單完全無雷絕對讓人再回訪！！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201797</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/woliu.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">我流精緻烤物│營業到凌晨二點的吃宵夜看球賽好去處，套餐新上市讓點餐更方便，對面就有免費特約停車場喔～</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201763</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/nashouchuan.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中北區】拿手串日式串燒居酒屋－招牌烤肉串與熱炒應有盡有，朋友聚會與下班小酌聊天的好所在！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201745</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/gangting13.png" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中北屯。美食】『港町十三番地-太原店』老字號居酒屋！營業到凌晨的宵夜聚餐好去處！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201712</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/jizhisn.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">「激旨燒き鳥GEKIUMA YAKITORI 台灣總店」逢甲夜市人氣串燒店推出外帶優惠</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201688</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/zhitxc.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">織田信長串燒、酒場-西屯本舖│台中深夜美食推薦！日式居酒屋，串燒好吃，品項超多，宵夜最佳首選～</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201645</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/caojt.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中美食║北區║草津田居酒屋║台中北區深夜食堂</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201611</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/hucqd.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">虎川千代居酒屋|台中居酒屋推薦中國醫日式老宅網評滿分!聚餐宵夜慶生老闆送很大</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201589</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/izakaya/niaozhong.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">鳥忠とりちゅう：台中西區美食-鄰近草悟道的深夜食堂日式居酒屋，必點尚青的海鮮料理！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201543</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>`;
  let beerTitle = `<div class="col-8 p-0">
                <div class="height500">
                    <img src="../images/izakaya/liuyyh.jpg" class="img-fluid">
                    <div class="text-con">
                        <p class="ellipsis">六月螢火｜台中深夜食堂，日料串燒結合調酒，時髦現代居酒屋，消費超平價</p>
                        <p></p>
                        <p class="latestDate-1">2024/7/20</p>
                    </div>
                </div>
            </div>
            <div class="col-4 row p-0">
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/izakaya/wucao.jpg">
                        <div class="text-con">
                            <p class="ellipsis">太原夜市人氣串燒”吾曹炭燒專門”開店囉！！40種以上創意串燒+獨門醬料，日式關東煮暖暖吃超滿足(寵物友善餐廳)</p>
                            <p></p>
                            <p class="latestDate-1">2024/7/1</p>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/izakaya/zhiju.jpg">
                        <div class="text-con">
                            <p class="ellipsis">【灸居｜台中 北屯區居酒屋】 無低消 高cp值 寵物友善串燒居酒屋 串物價格40元起</p>
                            <p></p>
                            <p class="latestDate-1">2024/6/15</p>
                        </div>
                    </div>
                </div>
            </div>`;
  $(".col-9").append(beer);
  $(".title").append(beerTitle);
});

//側邊欄-甜點
$(".custom-ul>div:nth-child(6)>img").on("click", function () {
  $(".col-9").text("");
  $(".title").text("");
  let dessert = `<div class="row">
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden" >
                            <div class="card-body p-0">
                                <img src="../images/dessert/erlin.jpg" alt="" class="img-fluid notesImage" >
                            </div>
                            <div class="card-footer align-items-center">
                                <p class="ellipsis notesTitle">甜點秘境「貳林工作室」，必嚐ig爆紅「芋泥抹茶戚風三明治」超美味又超好拍！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202203</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/liyu.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">台中西區│離域Cafe-老宅咖啡館，多了新品千層酥的選擇，審計新村附近甜點咖啡美食推薦</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">202010</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/overture.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中甜點推薦】Overture序曲 千層蛋糕水果蛋糕IG網美人氣名店！</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201907</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/jw_cafe.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">J.W. Cafe｜網路爆紅的貓掌印布丁就是這間！每日限量供應</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201879</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/ten_thousand.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">人氣咖啡「Ten Thousand Coffee」插旗台中！純白基地打造海島度假概念店</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201834</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/eryuesen.webp" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">二月森甜點工作室｜台中人氣法式手工餅乾甜點專賣</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201802</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/toutou.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">偷偷toutou | 台中超浮誇甜點16宮格乾冰塔</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201787</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/kelisita.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">克莉斯塔｜多達10多種鹹甜口味，最推焦糖佐海鹽蛋塔</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201741</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/laoka.jpeg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">LOWCA勞咖| 台中炸饅頭早午餐還有超邪惡的台版蜜糖吐司</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201708</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/charlietea.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">【台中西屯美食】查壹茶Charlie Tea & Coffee，神等級好吃流心感巴斯克蛋糕、爆漿抹茶鬆餅</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201689</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/lvting.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">綠町抹茶專門店-巷弄裡的抹茶專賣店，使用丸久小山園抹茶粉製作，抹茶控必收藏</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201664</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 mb-4">
                        <div class="card overflow-hidden">
                            <div class="card-body p-0">
                                <img src="../images/dessert/shichu.jpg" alt="" class="img-fluid notesImage">
                            </div>
                            <div class="card-footer">
                                <p class="ellipsis notesTitle">蒔初甜點五權店:清新可愛綠葡萄戚風蛋糕</p>
                                <div class="fixed-bottom-center">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="../images/other/eye.png" alt="">
                                        <p class="m-0 viewNumber">201622</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>`;
  let dessertTitle = `<div class="col-8 p-0">
                <div class="height500">
                    <img src="../images/dessert/ruocao.jpg" class="img-fluid">
                    <div class="text-con">
                        <p class="ellipsis">若草．台中模範街神秘甜點店，水果千層、焦糖布丁大推</p>
                        <p></p>
                        <p class="latestDate-1">2024/7/10</p>
                    </div>
                </div>
            </div>
            <div class="col-4 row p-0">
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/dessert/riri.jpg">
                        <div class="text-con">
                            <p class="ellipsis">台中西區 日日鬆餅 平價舒芙蕾鬆餅 審計新村必吃美食</p>
                            <p></p>
                            <p class="latestDate-1">2024/6/25</p>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="img-con">
                        <img src="../images/dessert/kekekuqi.jpg">
                        <div class="text-con">
                            <p class="ellipsis">台中北區 可可庫奇甜點工坊 到中友一中商圈逛街、用餐後的甜點午茶好選擇</p>
                            <p></p>
                            <p class="latestDate-1">2024/5/29</p>
                        </div>
                    </div>
                </div>
            </div>`;
  $(".col-9").append(dessert);
  $(".title").append(dessertTitle);
});

//側邊欄-居酒屋(RESTful=>未完成)
// beer.onclick = function () {
//   $.ajax({
//     url: "http://localhost/foodNotes/Getcontent",
//     method: "GET",
//   })
//     .done(function (mydata) {
//       console.log(mydata);
//       let notesTitle = document.querySelectorAll(".notesTitle");
//       let viewNumber = document.querySelectorAll(".viewNumber");

//       for (let k = 0; k < mydata.length; k++) {
//         notesTitle[k].innerText = "";
//         viewNumber[k].innerText = "";
//         notesTitle[k].innerHTML = mydata[k].content;
//         viewNumber[k].innerHTML = mydata[k].viewNumber;
//         console.log(mydata[k].content)
//         console.log(mydata[k].viewNumber);
//       }
//     })
//     .fail(function (cat) {
//       console.log("2.fail:", cat);
//     })
//     .always(function () {
//       console.log("3.always:咖波");
//     });
// };

//側邊欄-甜點(RESTful=>未完成)
// dessert.onclick = function () {
//   $.ajax({
//     url: `http://localhost/foodNotes/GetAll`,
//     method: "GET",
//   })
//     .done(function (mydata) {
//       console.log(mydata);
//       let notesImage = document.querySelectorAll(".notesImage");

//       for (let k = 0; k < mydata.length; k++) {
//         notesImage[k].src = "";
//         notesImage[k].src = mydata[k].image;
//         console.log(mydata[k].image);
//       }
//     })
//     .fail(function (cat) {
//       console.log("2.fail:", cat);
//     })
//     .always(function () {
//       console.log("3.always:咖波");
//     });
// }
