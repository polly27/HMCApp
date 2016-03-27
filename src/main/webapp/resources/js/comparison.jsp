<%@ page language="java" contentType="text/javascript; charset=UTF-8" pageEncoding="UTF-8"%>

        $(document).ready(function () {
            if(sessionStorage.comparedIdStr != null && sessionStorage.comparedIdStr != "" ) {
                loadStyledCompareItems();
            }
            styleCompareValue();
        });

        <%-- COMPARISON --%>

        function loadStyledCompareItems(){
            var comparedIdArr = sessionStorage.comparedIdStr.split(',');
            $(comparedIdArr).each(function(index,value){
                styleRemoveFromComp(value);
            });
        }

        function styleCompareValue(){
            if (sessionStorage.comparedIdStr != null && sessionStorage.comparedIdStr != "") {
                var value = sessionStorage.comparedIdStr.split(',').length;
                $('#compare-value').text('(' + value + ')');
            } else {
                $('#compare-value').text('');
            }
        }

        function goToComparison() {
            if (sessionStorage.comparedIdStr != null && sessionStorage.comparedIdStr != "") {
                window.location.href = "compare?itemsId=" + sessionStorage.comparedIdStr;
            } else {
                window.location.href = "compare";
            }
        }

        function addToComparison(productId) {
            var comparedIdArr = [];
            if (sessionStorage.comparedIdStr != null && sessionStorage.comparedIdStr != "") {
                comparedIdArr = sessionStorage.comparedIdStr.split(',');
            }
            comparedIdArr.push(productId);
            sessionStorage.comparedIdStr = comparedIdArr.join();
        }

        function removeFromComparison(productId) {
            var comparedArr = sessionStorage.comparedIdStr.split(',');
            comparedArr = $.grep(comparedArr, function (value) {
                return value != productId;
            });
            sessionStorage.comparedIdStr = (comparedArr.length != 0) ? comparedArr.join() : "";
        }

        function styleRemoveFromComp(productId) {
            var thisSpan = $("#compare"+productId);
            thisSpan.toggleClass("btn-green");
            thisSpan.text("remove from comparison");
            thisSpan.attr('onClick','removeFromComparison(\''+productId+'\'); styleAddToComp(\''+productId+'\')');
            styleCompareValue();
        }

        function styleAddToComp(productId) {
            var thisSpan = $("#compare"+productId);
            thisSpan.toggleClass("btn-green");
            thisSpan.text("add to comparison");
            thisSpan.attr('onClick','addToComparison(\''+productId+'\'); styleRemoveFromComp(\''+productId+'\')');
            styleCompareValue();
        }
