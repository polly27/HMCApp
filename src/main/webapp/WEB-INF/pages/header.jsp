<header>
<div class="container no-padding">

    <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
        <!-- ============================================================= LOGO ============================================================= -->
        <div class="logo">
            <a href="list">
                <img alt="vmc_and_hmc" src="resources/images/vmc_and_hmc.svg" width="233" height="54"/>
            </a>
        </div><!-- /.logo -->
        <!-- ============================================================= LOGO : END ============================================================= -->     </div><!-- /.logo-holder -->

    <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder no-margin">
        <div class="contact-row">
            <div class="phone inline">
                <i class="fa fa-phone"></i> USA: <span class="le-color">+1 203 556-50-69</span> Russia: <span class="le-color">+375 29 255-88-88</span>
            </div>
            <div class="contact inline">
                <i class="fa fa-envelope"></i> contact@<span class="le-color">vmccnc.com</span>
            </div>
            <div class="contact inline">
                <script type="text/javascript" src="http://www.skypeassets.com/i/scom/js/skype-uri.js"></script>
                <div id="SkypeButton_Call_marketing_dm_1">
                    <script type="text/javascript">
                        Skype.ui({
                            "name": "chat",
                            "element": "SkypeButton_Call_marketing_dm_1",
                            "participants": ["marketing_dm"]
                        });
                    </script>
                </div>
            </div>
        </div><!-- /.contact-row -->
    </div><!-- /.top-search-holder -->

    <div class="col-xs-12 col-sm-12 col-md-3 top-cart-row no-margin">
        <div class="top-cart-row-container">
            <div class="wishlist-compare-holder">
                <div class="wishlist ">
                    <a href="#"><i class="fa fa-heart"></i> wishlist <span class="value"></span> </a>
                </div>
                <div class="compare">
                    <a href="#" onclick="goToComparison()"><i class="fa fa-exchange"></i> comparison <span id="compare-value"></span> </a>
                </div>
            </div>

            <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
            <div class="top-cart-holder dropdown animate-dropdown">

                <div class="basket">

                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <div class="basket-item-count">
                            <span class="count"></span>
                            <img src="resources/images/icon-cart.png" alt="" />
                        </div>

                        <div class="total-price-basket">
                            <span class="lbl">your cart:</span>
                    <span class="total-price">
                        <span class="sign">$</span><span class="value"></span>
                    </span>
                        </div>
                    </a>

                    <ul class="dropdown-menu">

                        <c:forEach var="vmc" items="${cart.items}">
                            <li>
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-4 col-sm-4 no-margin text-center">
                                            <div class="thumb">
                                                <img alt="" src="resources/assets/images/products/${vmc.product.photo1}" />
                                            </div>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 no-margin">
                                            <div class="title">${vmc.product.model} (id:${vmc.product.productid}) </div>
                                            <div class="price">${vmc.product.price} </div>
                                            <div class="price">${vmc.quantity} units</div>
                                        </div>
                                    </div>
                                    <!--<a class="close-btn" href="del-from-basket.htm?id=${vmc.product.id}&page=index"></a>-->
                                    <a class="close-btn" href="del-from-basket.htm?id=${vmc.product.id}"></a>
                                </div>
                            </li>
                        </c:forEach>

                        <li class="checkout">
                            <div class="basket-item">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6">
                                        <a href="basket.htm" class="le-button inverse">View cart</a>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <a href="checkout.htm" class="le-button">Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </li>

                    </ul>
                </div>
                <!--/.basket-->
            </div>

            <!-- /.top-cart-holder -->
        </div>
        <!-- /.top-cart-row-container -->
        <!-- ============================================================= SHOPPING CART DROPDOWN : END ============================================================= -->       </div><!-- /.top-cart-row -->

</div><!-- /.container -->
</header>