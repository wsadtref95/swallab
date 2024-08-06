// 營業時間
let selectedWeekdays = [];
        let selectedHolidays = [];
        
        // 平日
        function toggleSelection(day) {
            const index = selectedWeekdays.indexOf(day);
            const element = document.getElementById(day);

            if (index === -1) {
                selectedWeekdays.push(day);
                element.classList.add('selected');
            } else {
                selectedWeekdays.splice(index, 1);
                element.classList.remove('selected');
            }
            
            const hiddenInput = document.querySelector(`input[name="myWeekdays[]"][value="${day}"]`);
            hiddenInput.disabled = index !== -1;
        }
        
        // 假日
        function toggleHolidaySelection(day) {
            const index = selectedHolidays.indexOf(day);
            const element = document.getElementById(day);
            
            if (index === -1) {
                // console.log(123);
                selectedHolidays.push(day);
                element.classList.add('selected');
            } else {
                selectedHolidays.splice(index, 1);
                element.classList.remove('selected');
            }

            const hiddenInput = document.querySelector(`input[name="myHolidays[]"][value="${day}"]`);
            hiddenInput.disabled = index !== -1;
        }

        // 平日
        for (var i = 0; i <= 24; i++) {
            $('#openTime').append('<option value="' + i + '">' + i + '</option>');
        }

        // 取得營業時間後更改啟動時間
        $('#openTime').change(function () {
            let openTime = $(this).val();
            // console.log(openTime);

            // 若重新選擇，要清除舊資料
            let closeTime = $('#closeTime');
            closeTime.empty();
            closeTime.append('<option>小時</option>');

            for (var i = 0; i <= 24; i++) {
                $('#closeTime').append('<option value="' + i + '">' + i + '</option>');
            }

            // 取得打烊時間
            $('#closeTime').change(function () {
                let closeTime = $(this).val();
                // console.log(closeTime);
            })
        })

        // 假日
        for (var i = 0; i <= 24; i++) {
            $('#holidayOpenTime').append('<option value="' + i + '">' + i + '</option>');
        }

        // 假日打烊時間
        $('#holidayOpenTime').change(function () {
            let holidayOpenTime = $(this).val();
            console.log(holidayOpenTime);

            // 若重新選擇，要清除舊資料
            let holidayCloseTime = $('#holidayCloseTime');
            holidayCloseTime.empty();
            holidayCloseTime.append('<option>小時</option>');

            for (var i = 0; i <= 24; i++) {
                $('#holidayCloseTime').append('<option value="' + i + '">' + i + '</option>');
            }

            // 取得打烊時間
            $('#holidayCloseTime').change(function () {
                let holidayCloseTime = $(this).val();
                console.log(holidayCloseTime);
            })
        })
        // 新增平日休息時間
        $('#addBreakTime').click(function () {
            let breakIndex = $('#myAdd .col-6').length + 1;
            let breakTimeHtml = `
                <div class="col-6 p-20" id="breakTime${breakIndex}">
                    <h5>休息時間 ${breakIndex}</h5>
                    <select name="breakStartTimeHour${breakIndex}" class="breakStartTimeHour">
                        <option>小時</option>
                    </select>
                    <span> : </span>
                    <select name="breakStartTimeMin${breakIndex}" class="Min">
                        <option>分鐘</option>
                        <option value="00">00</option>
                        <option value="30">30</option>
                    </select>
                    <span>-</span>
                    <select name="breakEndTimeHour${breakIndex}" class="breakEndTimeHour">
                        <option>小時</option>
                    </select>
                    <span> : </span>
                    <select name="breakEndTimeMin${breakIndex}" class="Min">
                        <option>分鐘</option>
                        <option value="00">00</option>
                        <option value="30">30</option>
                    </select>
                </div>`;
            $('#myAdd').append(breakTimeHtml);
            // 取得開店時間
            let openTime = $('#openTime').val();
            // 取得打烊時間
            let closeTime = $('#closeTime').val();

            for (var i = parseInt(openTime); i <= parseInt(closeTime); i++) {

                $(`#breakTime${breakIndex} .breakStartTimeHour`).append('<option value="' + i + '">' + i + '</option>');
                $(`#breakTime${breakIndex} .breakEndTimeHour`).append('<option value="' + i + '">' + i + '</option>');
            }
            if (breakIndex == 2) {
                $('#addBreakTime').addClass('disable');

            }
        })
        // 新增假日休息時間
        $('#addHolidayBreakTime').click(function () {
            let breakIndex = $('#myHolidayAdd .col-6').length + 1;
            let breakTimeHtml = `
                <div class="col-6 p-20" id="holidayBreakTime${breakIndex}">
                    <h5>休息時間 ${breakIndex}</h5>
                    <select name="holidayBreakStartTimeHour${breakIndex}" class="holidayBreakStartTimeHour">
                        <option>小時</option>
                    </select>
                    <span> : </span>
                    <select name="holidayBreakStartTimeMin${breakIndex}" class="Min">
                        <option>分鐘</option>
                        <option value="00">00</option>
                        <option value="30">30</option>
                    </select>
                    <span>-</span>
                    <select name="holidayBreakEndTimeHour${breakIndex}" class="holidayBreakEndTimeHour">
                        <option>小時</option>
                    </select>
                    <span> : </span>
                    <select name="holidayBreakEndTimeMin${breakIndex}" class="Min">
                        <option>分鐘</option>
                        <option value="00">00</option>
                        <option value="30">30</option>
                    </select>
                </div>`;
            $('#myHolidayAdd').append(breakTimeHtml);
            // 取得開店時間
            let openTime = $('#holidayOpenTime').val();
            // 取得打烊時間
            let closeTime = $('#holidayCloseTime').val();

            for (var i = parseInt(openTime); i <= parseInt(closeTime); i++) {

                $(`#holidayBreakTime${breakIndex} .holidayBreakStartTimeHour`).append('<option value="' + i + '">' + i + '</option>');
                $(`#holidayBreakTime${breakIndex} .holidayBreakEndTimeHour`).append('<option value="' + i + '">' + i + '</option>');
            }
            if (breakIndex == 2) {
                $('#addHolidayBreakTime').addClass('disable');

            }
        })

        // 顯示抓到的時間
        // $('#result').on('click', function () {
        //     // 取得開店時間
        //     let openTime = $('#openTime').val();
        //     console.log('開店時間' + openTime);
        //     // 取得打烊時間
        //     let closeTime = $('#closeTime').val();
        //     console.log('打烊時間' + closeTime);
        //     // 第一個休息時間
        //     if (`#breakTime1 .breakStartTimeHour`) {
        //         let breakTime1 = $(`#breakTime1 .breakStartTimeHour`).val();
        //         console.log('開始休息時間' + breakTime1);
        //     }
        //     // 第二個休息時間
        //     if (`#breakTime2 .breakStartTimeHour`) {
        //         let breakTime2 = $(`#breakTime2 .breakStartTimeHour`).val();
        //         console.log('開始休息時間' + breakTime2);
        //     }
        // })

        function submitForm() {
            const form = document.getElementById('businessHoursForm');
            form.submit();
        }
        // ===========================
        