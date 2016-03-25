<%@ page language="java" contentType="text/javascript; charset=UTF-8" pageEncoding="UTF-8"%>

        $(document).ready(function () {
            if(sessionStorage.comparedIdStr != null && sessionStorage.comparedIdStr != "" ) {
                loadStyledCompareItems();
            }
        });

        <%-- COMPARISON --%>

        function loadStyledCompareItems(){
            var comparedIdArr = sessionStorage.comparedIdStr.split(',');
            $(comparedIdArr).each(function(index,value){
                styleRemoveFromComp(value);
            });
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
            if (comparedIdArr.length < 5) {
                comparedIdArr.push(productId);
            } else {
                alert("You can compare up to 5 items at once.");
            }
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
        }

        function styleAddToComp(productId) {
            var thisSpan = $("#compare"+productId);
            thisSpan.toggleClass("btn-green");
            thisSpan.text("add to comparison");
           thisSpan.attr('onClick','addToComparison(\''+productId+'\'); styleRemoveFromComp(\''+productId+'\')');
        }
