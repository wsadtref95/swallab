@extends('layouts.app')


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    @section('styles')
    <style>
        .custom-size {
            width: 200px;
            height: 150px;
        }

        .right-section {
            background-color: aquamarine;
            position: absolute;
            right: 0;
            top: 50px;
            padding: 10px;
        }

        .item {
            margin-bottom: 20px;
        }
    </style>
    @endsection
    @section('content')
</head>

<body>
    <div id="dount">甜甜圈</div>
    <img id="aa" class="custom-size"
        src="{{ asset('images/products/pngtree-yellow-donut-illustration-png-image_4576523.jpg') }}" alt="">
    <button id="plus">+</button>
    <button id="reduce">-</button>
    <div id="rightsection" class="right-section" style="display: none;">
        <div id="dountDisplay" class="item"></div>
        <div id="colaDisplay" class="item"></div>
    </div>

    <div id="cola">可樂</div>
    <img id="bb" class="custom-size" src="{{ asset('images/products/下載.jpg') }}" alt="">
    <button id="plus2">+</button>
    <button id="reduce2">-</button>

    <script>
        let dountcounter = 0;
        let colacounter = 0;

        function sendAjaxRequest(name, imageUrl, quantity) {
            fetch('/swallabLa/public/update-product', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                    },
                    body: JSON.stringify({
                        name: name,
                        image_url: imageUrl,
                        quantity: quantity
                    })
                })
                .then(response => response.json())
                .then(data => console.log(data))
                .catch(error => console.error('Error:', error));
        }

        document.getElementById('plus').onclick = function plus() {
            if (dountcounter < 99) {
                dountcounter++;
                console.log(dountcounter);
                updateDisplay1();
                sendAjaxRequest(document.getElementById('dount').textContent, document.getElementById('aa').src,
                    dountcounter);
            }
        }
        document.getElementById('reduce').onclick = function reduce() {
            if (dountcounter > 0) {
                dountcounter--;
                console.log(dountcounter);
                updateDisplay1();
                sendAjaxRequest(document.getElementById('dount').textContent, document.getElementById('aa').src,
                    dountcounter);
            }
        }

        function updateDisplay1() {
            const dountDisplay = document.getElementById('dountDisplay');
            if (dountcounter > 0) {
                dountDisplay.innerHTML = `
                    <div>${document.getElementById('dount').textContent}</div>
                    <img class="custom-size" src="${document.getElementById('aa').src}" alt="">
                    <div>數量: ${dountcounter}</div>
                `;
            } else {
                dountDisplay.innerHTML = '';
            }
            updateRightSectionVisibility();
        }

        document.getElementById('plus2').onclick = function plus2() {
            if (colacounter < 99) {
                colacounter++;
                console.log(colacounter);
                updateDisplay2();
                sendAjaxRequest(document.getElementById('cola').innerText, document.getElementById('bb').src,
                    colacounter);
            }
        }

        document.getElementById('reduce2').onclick = function reduce2() {
            if (colacounter > 0) {
                colacounter--;
                console.log(colacounter);
                updateDisplay2();
                sendAjaxRequest(document.getElementById('cola').innerText, document.getElementById('bb').src,
                    colacounter);
            }
        }

        function updateDisplay2() {
            const colaDisplay = document.getElementById('colaDisplay');
            if (colacounter > 0) {
                colaDisplay.innerHTML = `
                    <div>${document.getElementById('cola').innerText}</div>
                    <img class="custom-size" src="${document.getElementById('bb').src}">
                    <div>數量: ${colacounter}</div>
                `;
            } else {
                colaDisplay.innerHTML = '';
            }
            updateRightSectionVisibility();
        }

        function updateRightSectionVisibility() {
            const rightSection = document.getElementById('rightsection');
            if (dountcounter > 0 || colacounter > 0) {
                rightSection.style.display = 'block';
            } else {
                rightSection.style.display = 'none';
            }
        }
    </script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @endsection
</body>

</html>
