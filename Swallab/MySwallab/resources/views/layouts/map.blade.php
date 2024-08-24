<!-- resources/views/layouts/map.blade.php -->
<style>
    #googlemap {
        height: 600px;
        width: 100%;
    }

    #sidebar {
        height: 600px;
        overflow-y: scroll;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 8px;
        background-color: #EEE9D5;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    #sidebar ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    #sidebar li {
        padding: 10px;
        cursor: pointer;
        border-bottom: 1px solid #eee;
    }

    #sidebar li:hover {
        background-color: #f9f9f9;
    }

    #currentLocationButton {
        display: block;
        margin-bottom: 10px;
        padding: 10px;
        background-color: rgb(229, 166, 122);
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        text-align: center;
    }

    #currentLocationButton:hover {
        background-color: rgb(237, 186, 150);
    }

    .icon-shopping {
        position: fixed;
        top: 300px;
        right: 10px;
        font-size: 24px;
        z-index: 1;
        cursor: pointer;
    }

    .stars {
        color: #FFD700;
        font-size: 1.2em;
    }

    #btn {
        background-color: rgb(237, 186, 150);
        color: white;
        font-size: 13px;
        padding: 5px 10px;
        border-radius: 5px;
        cursor: pointer;
        display: inline-block;

    }

    #btn:hover {
        background-color: rgb(214, 166, 134);
    }

    /*
    .gm-style-iw-d {
        background-color: #EEE9D5 !important;
        padding: 10px !important;
        border-radius: 8px !important;
        max-width: 200px !important;
        overflow: hidden !important;
        max-height: none !important;
    }

    .gm-style-iw-chr {
        background-color: #EEE9D5 !important;
        padding: 10px !important;
        border-radius: 8px !important;
        max-width: 200px !important;
    }

    .gm-style-iw-ch {
        background-color: #EEE9D5 !important;
        padding: 10px !important;
        border-radius: 8px !important;
        max-width: 200px !important;
    } */
</style>

<!-- Font Awesome CDN -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFfMKagsvr7L4704YiZlG_2hp8gNfaB5A&libraries=places&callback=initMap"
    async defer></script>
<script>
    let map;
    let service;
    let infowindow;
    let userLocation;
    let geocoder;
    const clickStates = {};

    function initMap() {
        infowindow = new google.maps.InfoWindow();
        geocoder = new google.maps.Geocoder();

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(
                (position) => {
                    userLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

                    map = new google.maps.Map(document.getElementById('googlemap'), {
                        center: userLocation,
                        zoom: 15
                    });

                    const userMarker = new google.maps.Marker({
                        position: userLocation,
                        map: map,
                        title: "你當前的位置",
                        icon: {
                            url: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
                        }
                    });

                    geocoder.geocode({
                        location: userLocation
                    }, (results, status) => {
                        if (status === "OK") {
                            if (results[0]) {
                                infowindow.setContent(`你目前在 ${results[0].formatted_address}`);
                                infowindow.open(map, userMarker);
                            } else {
                                console.warn("No results found");
                            }
                        } else {
                            console.warn("Geocoder failed due to: " + status);
                        }
                    });

                    const request = {
                        location: userLocation,
                        radius: '8000',
                        type: ['restaurant'],
                        // keyword:['青花驕','茶六'],
                    };

                    service = new google.maps.places.PlacesService(map);
                    service.nearbySearch(request, (results, status) => {
                        if (status == google.maps.places.PlacesServiceStatus.OK) {
                            const maxResults = 70;
                            const limitedResults = results.slice(0, maxResults);

                            for (let i = 0; i < limitedResults.length; i++) {
                                createMarker(limitedResults[i]);
                                addToList(limitedResults[i]);
                            }
                        }
                    });
                },
                (error) => {
                    console.error("Error getting geolocation: ", error);
                    alert("Unable to retrieve your location.");
                }
            );
        } else {
            alert("Geolocation is not supported by this browser.");
        }
    }

    function createMarker(place) {
        if (!place.geometry || !place.geometry.location) return;

        const marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location,
            title: place.name
        });

        google.maps.event.addListener(marker, 'click', () => {
            const content = `
            <div class="custom-info-window">
                <strong style="font-weight: 900;">${place.name}</strong><br>
                ${getCustomInfoForPlace(place.name).comment}
            </div>
        `;
            infowindow.setContent(content);
            infowindow.open(map, marker);


            const iwOuter = document.querySelector('.gm-style-iw');
            if (iwOuter) {
                iwOuter.parentElement.style.backgroundColor = '#EEE9D5';
                iwOuter.parentElement.style.borderRadius = '8px';
                iwOuter.parentElement.style.padding = '10px';
            }
        });
    }




    function goToCurrentLocation() {
        if (userLocation) {
            map.setCenter(userLocation);
            infowindow.setContent("你當前的位置");
            infowindow.open(map, new google.maps.Marker({
                position: userLocation,
                map: map,
                title: "Your Location",
                icon: {
                    url: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
                }
            }));
        } else {
            alert("Unable to retrieve your location.");
        }
    }

    function addToList(place) {
        const list = document.getElementById('places');


        const item = document.createElement('li');

        const boldText = document.createElement('b');
        boldText.textContent = place.name;


        item.appendChild(boldText);


        const {
            url,
            comment
        } = getCustomInfoForPlace(place.name);
        clickStates[place.name] = false;

        item.style.cursor = 'pointer';
        item.addEventListener('click', () => {
            if (!clickStates[place.name]) {

                infowindow.setContent(`<strong style="font-weight: 900;">${place.name}</strong><br>${comment}`);
                infowindow.open(map, new google.maps.Marker({
                    position: place.geometry.location,
                    map: map,
                    title: place.name
                }));

            }
        });

        // 将 <li> 元素添加到列表中
        list.appendChild(item);
    }


    function getCustomInfoForPlace(placeName) {
        const info = {
            '阿裕壽司': {
                url: 'https://www.twitch.tv/',
                comment: `<br><span class="stars">★★★☆☆</span><span>(623)</span><br>素雅的熱門餐廳，供應壽司和生魚片，並提供外帶服務。<br><br><button id="btn" onclick="window.location.href='https://www.twitch.tv/'">前往頁面</button>`
            },
            '鼎王麻辣鍋(公益店)': {
                url: 'https://www.twitch.tv/',
                comment: `<br><span class="stars">★★★★★</span><span>(1058)</span><br>鼎王麻辣鍋是非常有名的麻辣火鍋，湯底濃郁，服務一流！<br><br><button id="btn" onclick="window.location.href='https://www.twitch.tv/'">前往頁面</button>`
            },
            '法森小館': {
                url: 'https://www.gamer.com.tw/',
                comment: `<br><span class="stars">★★★★☆</span><span>(889)</span><br>法森小館提供精緻的法國料理，餐點非常美味。<br><br><button id="btn" onclick="window.location.href='https://www.gamer.com.tw/'">前往頁面</button>`
            },
            '義式屋古拉爵 台中家樂福文心店': {
                url: 'https://www.twitch.tv/',
                comment: `<br><span class="stars">★★★☆☆</span><span>(337)</span><br>平價義式餐廳。<br><br><button id="btn" onclick="window.location.href='https://www.twitch.tv/'">前往頁面</button>`
            },
            '核果美食工房': {
                url: 'https://www.facebook.com/',
                comment: `<br><span class="stars">★★★★☆</span><span>(432)</span><br>核果美食工房的甜點尤其受到年輕人的喜愛。<br><br><button id="btn" onclick="window.location.href='https://www.facebook.com/'">前往頁面</button>`
            },
            '屋馬燒肉 中港店': {
                url: 'http://localhost/swallabLa/swallab/public/restaurant/detail2',
                comment: `<br><span class="stars">★★★★★</span><span>(1058)</span><br>屋馬燒肉是臺中非常受歡迎的燒肉店，肉質新鮮。<br><br><button id="btn" onclick="window.location.href='http://localhost/swallabLa/swallab/public/restaurant/detail2'">前往頁面</button>`
            },
            '茶六燒肉堂 公益店': {
                url: 'http://localhost/swallabLa/swallab/public/restaurant/detail2',
                comment: `<br><span class="stars">★★★★☆</span><span>(730)</span><br>茶六燒肉堂以其獨特的調味和豐富的菜單而著稱。<br><br><button id="btn" onclick="window.location.href='http://localhost/swallabLa/swallab/public/restaurant/detail2'">前往頁面</button>`
            },
            '台中商旅': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★★☆</span><span>(543)</span><br>台中商旅是一家現代化的酒店，提供舒適的住宿環境。<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '三時茶房(8/19週一臨時有事只營業到17:00）': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★☆☆</span><span>(320)</span><br>三時茶房是一家溫馨的茶館，提供各種茶飲和小點心。<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '非常泰 台中大遠百店': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★★☆</span><span>(678)</span><br>非常泰以其正宗的泰國菜和清新的環境而聞名。<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '鼎王麻辣鍋 漢口店': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★★★</span><span>(982)</span><br>鼎王麻辣鍋在漢口店提供極致的麻辣體驗。<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '鼎王麻辣鍋(精誠店)': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★★★</span><span>(1140)</span><br>鼎王麻辣鍋的精誠店以其優質的服務和美味的湯底著稱。<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '水相餐聚苑': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★★☆</span><span>(765)</span><br>水相餐聚苑是一個美麗的餐廳，提供獨特的用餐體驗。<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '台中金典酒店-栢麗廳': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★★★</span><span>(1342)</span><br>台中金典酒店的栢麗廳以其高品質的自助餐而聞名。<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '夏慕尼新香榭鐵板燒 台中大隆店': {
                url: 'https://example.com',
                comment: `<br><span class="stars">★★★★★</span><span>(742)</span><br>"夏慕尼 大膽顛覆傳統鐵板燒的老式印象 將法式料理及Lounge Bar 的時尚元素融入鐵板料理 設計出一道道精緻小巧的餐點 法式浪漫風情營造出獨特迷人的用餐環境氛圍 絢爛的水晶燈、悅耳的鋼琴聲、美味的法式鐵板饗宴 屬於情人的浪漫夜正要開始……"<br><br><button id="btn" onclick="window.location.href='https://example.com'">前往頁面</button>`
            },
            '青花驕麻辣鍋 台中公益店': {
                url: 'http://localhost/swallabLa/swallab/public/restaurant/detail',
                comment: `<br><span class="stars">★★★★★</span><span>(742)</span><br>"青花驕 · 我辣故我在 · 真食好料 · 尋找驕點 "<br><br><button id="btn" onclick="window.location.href='http://localhost/swallabLa/swallab/public/restaurant/detail'">前往頁面</button>`
            },
        };

        return info[placeName] || {
            url: 'https://www.youtube.com/',
            comment: `<br><span class="stars">★★★☆☆</span><br>這是一家很棒的餐廳。<br><br><button id="btn" onclick="window.location.href='https://www.youtube.com/'">前往頁面</button>`
        };
    }
</script>
