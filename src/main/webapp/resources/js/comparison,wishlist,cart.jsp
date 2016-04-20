<%@ page language="java" contentType="text/javascript; charset=UTF-8" pageEncoding="UTF-8"%>

        $(document).ready(function () {
            if(localStorage.comparedIdStr != null && localStorage.comparedIdStr != "" ) {
                loadStyledCompareItems();
            }
            styleCompareValue();
            createPopovers();
            if(localStorage.wishListIdStr != null && localStorage.wishListIdStr != "" ) {
                loadStyledWishListItems();
            }
            styleWishListValue();
            if(localStorage.cartItemStr != null && localStorage.cartItemStr != "" ) {
                loadStyledCartItems();
                styleCounts();
                loadBasketDropdown();
            } else {
                localStorage.cartTotal = "0";
                localStorage.cartCount = "0";
            }
            styleCartValue();
        });

        <%-- COMMON --%>

        function styleValue(arr,id){
            $(id).text( arr != null && arr != "" ? '('+arr.split(',').length+')' : '' );
        }

        function goTo(href,arr) {
            if (arr != null && arr != "") {
                window.location.href = href + "?itemsId=" + arr;
            } else {
                window.location.href = href;
            }
        }

        function removeFromArr(arrStr,productId) {
            var arr = arrStr.split(',');
            arr = $.grep(arr, function (value) {
                return value != productId;
            });
            return (arr.length != 0) ? arr.join() : "";
        }

        <%-- COMPARISON --%>

        function loadStyledCompareItems(){
            var comparedIdArr = localStorage.comparedIdStr.split(',');
            $(comparedIdArr).each(function(index,value){
                styleRemoveFromComp(value);
            });
        }

        function styleCompareValue(){
            styleValue(localStorage.comparedIdStr,'#compare-value');
        }

        function goToComparison() {
            goTo("compare",localStorage.comparedIdStr);
        }

        function addToComparison(productId) {
            var comparedIdArr = [];
            if (localStorage.comparedIdStr != null && localStorage.comparedIdStr != "") {
                comparedIdArr = localStorage.comparedIdStr.split(',');
            }
            if (comparedIdArr.length < 4) {
                comparedIdArr.push(productId);
                localStorage.comparedIdStr = comparedIdArr.join();
                styleRemoveFromComp(productId);
                styleCompareValue();
            } else {
                $("#compare"+productId).popover('show');
            }
        }

        function removeFromComparison(productId) {
            localStorage.comparedIdStr = removeFromArr(localStorage.comparedIdStr,productId);
            styleAddToComp(productId);
            styleCompareValue();
        }

        function styleRemoveFromComp(productId) {
            var thisSpan = $("#compare"+productId);
            thisSpan.toggleClass("btn-green");
            thisSpan.text("remove from comparison");
            thisSpan.attr('onClick','removeFromComparison(\''+productId+'\')');
            styleCompareValue();
        }

        function styleAddToComp(productId) {
            var thisSpan = $("#compare"+productId);
            thisSpan.toggleClass("btn-green");
            thisSpan.text("add to comparison");
            thisSpan.attr('onClick','addToComparison(\''+productId+'\')');
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
            var wishListIdArr = localStorage.wishListIdStr.split(',');
            $(wishListIdArr).each(function(index,value){
                styleRemoveFromWishList(value);
            });
        }

        function styleWishListValue(){
            styleValue(localStorage.wishListIdStr,'#wishList-value');
        }

        function goToWishList() {
            goTo("wishList",localStorage.wishListIdStr);
        }

        function addToWishList(productId) {
            var wishListIdArr = [];
            if (localStorage.wishListIdStr != null && localStorage.wishListIdStr != "") {
                wishListIdArr = localStorage.wishListIdStr.split(',');
            }
            wishListIdArr.push(productId);
            localStorage.wishListIdStr = wishListIdArr.join();
            styleRemoveFromWishList(productId);
            styleWishListValue();
        }

        function removeFromWishListAndReloadPage(productId) {
            localStorage.wishListIdStr = removeFromArr(localStorage.wishListIdStr, productId);
            goToWishList();
        }

        function removeFromWishList(productId) {
            localStorage.wishListIdStr = removeFromArr(localStorage.wishListIdStr,productId);
            styleAddToWishList(productId);
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

        <%-- CART --%>

        function loadStyledCartItems(){
            var cartItemArr = localStorage.cartItemStr.split(';');
            $(cartItemArr).each(function(index,value){
                var productId = value.split(',')[0];
                styleRemoveFromCart(productId);
            });
        }

        function styleCartValue(){
            var count = localStorage.cartCount.toString();
            $('#cart-count').text(count > 0 ? count : "");
            $('.cart-total').text(localStorage.cartTotal.toString());
        }

        function getArrOfId(fullStr) {
            var fullArr = fullStr.split(';');
            if(fullArr != null && fullArr != "") {
                var arrOfId = "";
                $(fullArr).each(function (index,value) {
                    var productId = value.split(',')[0];
                    arrOfId += productId + ",";
                });
                arrOfId = arrOfId.substring(0,arrOfId.length - 1);
            }
            return arrOfId;
        }

        function goToCart() {
            var arrOfId = getArrOfId(localStorage.cartItemStr);
            goTo("cart",arrOfId);
        }

        function addToCart(productId) {
            var cartItemArr = [];
            if (localStorage.cartItemStr != null && localStorage.cartItemStr != "") {
                cartItemArr = localStorage.cartItemStr.split(';');
            }
            var price = $('#price'+productId).text();
            var photo = $('#photo'+productId).text();
            var model = $('#model'+productId).text();
            var brand = $('#brand'+productId).text();
            cartItemArr.push(productId+","+price+",1,"+photo+","+model+","+brand);
            localStorage.cartItemStr = cartItemArr.join(";");
            localStorage.cartTotal = (parseInt(localStorage.cartTotal) + parseInt(price)).toString();
            localStorage.cartCount = (parseInt(localStorage.cartCount) + 1).toString();
            styleRemoveFromCart(productId);
            styleCartValue();
            loadBasketDropdown();
        }

        function removeFromCart(productId) {
            var arr = localStorage.cartItemStr.split(';');
            var item;
            $.each(arr,function(index,value){
                if(value.split(',')[0] == productId) {
                    item = value;

                }
            });
            arr = $.grep(arr, function (value) {
                return value != item;
            });
            localStorage.cartItemStr = (arr.length != 0) ? arr.join(";") : "";
            var price = item.split(',')[1];
            var count = item.split(',')[2];
            localStorage.cartTotal = (parseInt(localStorage.cartTotal) - price * count).toString();
            localStorage.cartCount = (parseInt(localStorage.cartCount) - count).toString();
            styleAddToCart(productId);
            styleCartValue();
            if(localStorage.cartItemStr != "") {
                loadBasketDropdown();
            }
        }

        function styleCounts() {
            var arr = localStorage.cartItemStr.split(';');
            $.each(arr,function(index,value){
                var item = value.split(',');
                $("#count"+item[0]).val(item[2]);
            });
        }

        function styleRemoveFromCart(productId) {
            var thisSpan = $("#cart"+productId);
            thisSpan.toggleClass("in-cart");
            thisSpan.text("in cart");
            thisSpan.attr('onClick','removeFromCart(\''+productId+'\')');
            var thisCount = $("#count"+productId);
        }

        function styleAddToCart(productId) {
            var thisSpan = $("#cart"+productId);
            thisSpan.toggleClass("in-cart");
            thisSpan.text("add to cart");
            thisSpan.attr('onClick','addToCart(\''+productId+'\')');
        }

        function minusFromCart(productId) {
            var arr = localStorage.cartItemStr.split(';');
            var changed = false;
            var price;
            for(var i=0; !changed && i<arr.length; ++i) {
                if(arr[i].split(',')[0] == productId) {
                    var item = arr[i].split(',');
                    price = item[1];
                    var count = item[2];
                    --count;
                    if(count < 1) {
                        arr = $.grep(arr, function (value) {
                            return value != item;
                        });
                    } else {
                        arr[i] = item[0] + ',' + item[1] + ',' + count;
                    }
                    changed = true;
                }
            }
            localStorage.cartItemStr = (arr.length != 0) ? arr.join(";") : "";
            localStorage.cartTotal = (parseInt(localStorage.cartTotal) - price).toString();
            localStorage.cartCount = (parseInt(localStorage.cartCount) - 1).toString();
            styleCartValue();
            if(localStorage.cartItemStr != "") {
                loadBasketDropdown();
            }
        }

        function plusToCart(productId) {
            var arr = localStorage.cartItemStr.split(';');
            var changed = false;
            var price;
            for(var i=0; !changed && i<arr.length; ++i) {
                if(arr[i].split(',')[0] == productId) {
                    var item = arr[i].split(',');
                    price = parseInt(item[1]);
                    var count = item[2];
                    ++count;
                    arr[i] = item[0]+','+item[1]+','+count+','+item[3]+','+item[4]+','+item[5];
                    changed = true;
                }
            }
            localStorage.cartItemStr = (arr.length != 0) ? arr.join(";") : "";
            localStorage.cartTotal = (parseInt(localStorage.cartTotal) + price).toString();
            localStorage.cartCount = (parseInt(localStorage.cartCount) + 1).toString();
            styleCartValue();
        }

        function loadBasketDropdown(){
            var arr = localStorage.cartItemStr.split(';');
            for(var i=0; i<3; ++i) {
                if (i < arr.length) {
                    var machine = arr[i].split(',');
                    $("#li" + (i + 1)).removeClass("hidden");
                    $("#li" + (i + 1) + " img").attr("src", "resources/images/products/" + machine[3]);
                    $("#li" + (i + 1) + " img").attr("alt", machine[4]);
                    $("#li" + (i + 1) + " .title").html(machine[4] + '<br>' + machine[5]);
                    $("#li" + (i + 1) + " .price").text("$" + machine[1] + ".00");
                    $("#li" + (i + 1) + " .close-btn").click(function(){
                        removeFromCart(machine[0]);
                    });
                } else {
                    $("#li" + (i + 1)).addClass("hidden");
                }
            }
        }

        <%-- PROPOSAL --%>

        function goToProposal() {
            var arrOfId = getArrOfId(localStorage.cartItemStr);
            goTo("proposal",arrOfId);
        }

        
