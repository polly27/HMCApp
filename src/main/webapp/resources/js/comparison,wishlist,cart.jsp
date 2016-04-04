<%@ page language="java" contentType="text/javascript; charset=UTF-8" pageEncoding="UTF-8"%>

        $(document).ready(function () {
            if(sessionStorage.comparedIdStr != null && sessionStorage.comparedIdStr != "" ) {
                loadStyledCompareItems();
            }
            styleCompareValue();
            createPopovers();
            if(sessionStorage.wishListIdStr != null && sessionStorage.wishListIdStr != "" ) {
                loadStyledWishListItems();
            }
            styleWishListValue();
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
            if (comparedIdArr.length < 4) {
                comparedIdArr.push(productId);
                sessionStorage.comparedIdStr = comparedIdArr.join();
                styleRemoveFromComp(productId);
            } else {
                $("#compare"+productId).popover('show');
            }
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

        function createPopovers() {
            var popoverItem = $(".btn-add-to-compare");
            popoverItem.popover({
                placement: 'auto right',
                trigger: 'manual',
                html: true,
                content: '<b>You may compare up to 4 items at a time</b><br><br>' +
                        'Would you like to compare the first 4 items you selected?<br><br>' +
                        '<a href="#" onclick="goToComparison()">Yes, go to compare</a>'
            });
            popoverItem.on('shown.bs.popover', function () {
                setTimeout(function () {
                    popoverItem.popover('hide');
                }, 3500);
            });

        }

        <%-- WISHLIST --%>

        function loadStyledWishListItems(){
            var wishListIdArr = sessionStorage.wishListIdStr.split(',');
            $(wishListIdArr).each(function(index,value){
                styleRemoveFromWishList(value);
            });
        }

        function styleWishListValue(){
            if (sessionStorage.wishListIdStr != null && sessionStorage.wishListIdStr != "") {
                var value = sessionStorage.wishListIdStr.split(',').length;
                $('#wishList-value').text('(' + value + ')');
            } else {
                $('#wishList-value').text('');
            }
        }

        function goToWishList() {
            if (sessionStorage.wishListIdStr != null && sessionStorage.wishListIdStr != "") {
                window.location.href = "wishList?itemsId=" + sessionStorage.wishListIdStr;
            } else {
                window.location.href = "wishList";
            }
        }

        function addToWishList(productId) {
            var wishListIdArr = [];
            if (sessionStorage.wishListIdStr != null && sessionStorage.wishListIdStr != "") {
                wishListIdArr = sessionStorage.wishListIdStr.split(',');
            }
            wishListIdArr.push(productId);
            styleRemoveFromWishList(productId);
            sessionStorage.wishListIdStr = wishListIdArr.join();
            styleWishListValue();
        }

        function removeFromWishList(productId) {
            var wishListArr = sessionStorage.wishListIdStr.split(',');
            wishListArr = $.grep(wishListArr, function (value) {
                return value != productId;
            });
            styleAddToWishList(productId);
            sessionStorage.wishListIdStr = (wishListArr.length != 0) ? wishListArr.join() : "";
            styleWishListValue();
        }

        function styleRemoveFromWishList(productId) {
            var thisSpan = $("#wishList"+productId);
            thisSpan.toggleClass("btn-green");
            thisSpan.text("remove from wish list");
            thisSpan.attr('onClick','removeFromWishList(\''+productId+'\')');
            styleWishListValue();
        }

        function styleAddToWishList(productId) {
            var thisSpan = $("#wishList"+productId);
            thisSpan.toggleClass("btn-green");
            thisSpan.text("add to wish list");
            thisSpan.attr('onClick','addToWishList(\''+productId+'\')');
            styleWishListValue();
        }
