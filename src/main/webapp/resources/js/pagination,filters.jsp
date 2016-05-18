<%@ page language="java" contentType="text/javascript; charset=UTF-8" pageEncoding="UTF-8"%>

        var currentPage = 1;

        $(document).ready(function () {
            toggleItems(currentPage);
            toggleCurrentClassPage(currentPage);
            setSpanFromTo();

            if (sessionStorage.length == 0) {
                loadSlider('productionYear', yearMin, yearMax, 1, "");
                loadSlider('price', priceMin, priceMax, 100, "");
                loadSlider('x-motion', xMotionMin, xMotionMax, 100, "");
                loadSlider('y-motion', yMotionMin, yMotionMax, 100, "");
                loadSlider('z-motion', zMotionMin, zMotionMax, 100, "");
                loadSlider('x-table', xTableSizeMin, xTableSizeMax, 100, "");
                loadSlider('y-table', yTableSizeMin, yTableSizeMax, 100, "");
            } else {
                loadSettings();
            }

            saveSettings();
        });

        <%--PAGINATION--%>

        function showPage(page) {
            toggleItems(currentPage);
            toggleItems(page);
            toggleCurrentClassPage(currentPage);
            toggleCurrentClassPage(page);
            currentPage = page;
            setSpanFromTo();
        }

        function toggleItems(page) {
            for (i = (page - 1) * itemsPerPage + 1; i <= itemsNum && i <= page * itemsPerPage; i++) {
                $('#item' + i).toggleClass('hidden');
            }
        }

        function toggleCurrentClassPage(page) {
            $('#page' + page).toggleClass("current");
        }

        function setSpanFromTo() {
            var from = (currentPage - 1) * itemsPerPage + 1;
            var to = currentPage * itemsPerPage;
            if (to > itemsNum) {
                to = itemsNum;
            }
            $('#showFromTo').text(function () {
                if (from == to)
                    return from.toString() + 'th result';
                return from.toString() + '-' + to.toString() + ' of ' + itemsNum + ' results';
            });
        }

        <%-- FILTERS --%>
        function submitFilter() {
            saveSettings();
            $('#filterForm').submit();
        }

        function loadSettings() {
            loadCheckbox('brand', sessionStorage.brand);
            loadSlider('productionYear', yearMin, yearMax, 1, sessionStorage.productionYear);
            loadSlider('price', priceMin, priceMax, 100, sessionStorage.price);
            loadCheckbox('location', sessionStorage.location);
            loadCheckbox('cnc', sessionStorage.cnc);
            loadSlider('x-motion', xMotionMin, xMotionMax, 100, sessionStorage.xMotion);
            loadSlider('y-motion', yMotionMin, yMotionMax, 100, sessionStorage.yMotion);
            loadSlider('z-motion', zMotionMin, zMotionMax, 100, sessionStorage.zMotion);
            loadSlider('x-table', xTableSizeMin, xTableSizeMax, 100, sessionStorage.xTable);
            loadSlider('y-table', yTableSizeMin, yTableSizeMax, 100, sessionStorage.yTable);
        }

        function loadCheckbox(name, data) {
            var i = 0;
            $('input[name=' + name + ']').each(function () {
                $(this).prop('checked', data.charAt(i++) == '1');
            });
        }

        function loadSlider(nameVal, minVal, maxVal, stepVal, valueVal) {
            var thisSlider = $('#' + nameVal + '-slider');
            if (valueVal != "" && valueVal != (minVal + "," + maxVal)) {
                thisSlider.val(valueVal);
            }
            valueVal = (valueVal == "") ? [minVal, maxVal] : valueVal.split(",").map(Number);
            thisSlider.slider({min: parseInt(minVal), max: parseInt(maxVal), step: stepVal, value: valueVal});
        }

        function saveSettings() {
            sessionStorage.brand = saveCheckbox('brand');
            sessionStorage.location = saveCheckbox('location');
            sessionStorage.productionYear = saveSlider('productionYear');
            sessionStorage.price = saveSlider('price');
            sessionStorage.cnc = saveCheckbox('cnc');
            sessionStorage.xMotion = saveSlider('x-motion');
            sessionStorage.yMotion = saveSlider('y-motion');
            sessionStorage.zMotion = saveSlider('z-motion');
            sessionStorage.xTable = saveSlider('x-table');
            sessionStorage.yTable = saveSlider('y-table');
        }

        function saveCheckbox(name) {
            var data = "";
            $('input[name=' + name + ']').each(function () {
                data += this.checked ? "1" : "0";
            });
            return data;
        }

        function saveSlider(name) {
            return $('#' + name + '-slider').val();
        }
