let totalprices = [];    
        function removeProduct(rowId) {
            const productRow = document.getElementById(rowId);
            if (productRow) {
                productRow.remove();
                updateSubtotal();
                
            }
        }
        function updateSubtotal() {
            
            //var totalPrices = document.getElementById();
            var subtotal = 0;
            for (let i = 0; i < totalprices.length; i++) {
                subtotal += totalprices[i];
            }
            console.log(subtotal);
            document.getElementById('subtotal').textContent = `總計: $${subtotal.toFixed(0)}`;
        }
        function increment(numberSpanId, priceId, totalPriceId) {
            // 獲取數量的 span 元素
            var numberSpan = document.getElementById(numberSpanId);
            // 獲取當前數量並轉換為數字
            var currentNumber = parseInt(numberSpan.innerText);
            // 增加數量
            currentNumber++;
            // 更新數量的 span 元素的文本
            numberSpan.innerText = currentNumber;
            // 在控制台輸出 2
            // console.log(2);
            // 更新總價（這部分取決於你的邏輯，可以省略）
            updateTotalPrice(numberSpanId, priceId, totalPriceId);
        }

        function decrement(numberSpanId, priceId, totalPriceId) {
            // 獲取數量的 span 元素
            var numberSpan = document.getElementById(numberSpanId);
            // 獲取當前數量並轉換為數字
            var currentNumber = parseInt(numberSpan.innerText);
            // 檢查當前數量是否大於 0，以防止數量變為負數
            if (currentNumber > 0) {
                // 減少數量
                currentNumber--;
                // 更新數量的 span 元素的文本
                numberSpan.innerText = currentNumber;
                // 在控制台輸出當前數量
                console.log(currentNumber);
                // 更新總價（這部分取決於你的邏輯，可以省略）
                updateTotalPrice(numberSpanId, priceId, totalPriceId);
            }
        }

        function updateTotalPrice(numberSpanId, priceId, totalPriceId) {
        
            // 獲取數量的 span 元素
            var numberSpan = document.getElementById(numberSpanId);
            // 獲取價格元素
            var priceElement = document.getElementById(priceId);
            // 獲取總價的元素
            var totalPriceElement = document.getElementById(totalPriceId);
            // 獲取當前數量和單價
            var currentNumber = parseInt(numberSpan.innerText);
            var price = parseFloat(priceElement.textContent.replace('$', ''));
            
            // 計算總價
            var totalPrice = currentNumber * price;
            // 更新總價的元素的文本
            totalPriceElement.innerText = totalPrice.toFixed(0);
            document.getElementById(totalPriceId).textContent = `$${totalPrice}`
            // 存入陣列
            totalprices.push(totalPrice);
            //console.log(totalprices);
            updateSubtotal();
        }
        //日期選單
        
        let today = new Date();
    
        let dateOptions = [
            today.toLocaleDateString(),
            new Date(today.setDate(today.getDate() + 1)).toLocaleDateString(),
            new Date(today.setDate(today.getDate() + 1)).toLocaleDateString()
        ];

        
        let dateDropdown = document.getElementById('dateDropdown');
        dateOptions.forEach(function(date) {
            var dateOption = document.createElement('a');
            dateOption.className = 'dropdown-item';
            dateOption.href = '#';
            dateOption.textContent = date;
            dateOption.onclick = function() {
                document.getElementById('dropdownMenuButton').textContent = date;
            };
            dateDropdown.appendChild(dateOption);
            
        });
        //時間選單