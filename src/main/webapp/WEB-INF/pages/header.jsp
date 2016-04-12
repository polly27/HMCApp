<header>
    <div class="container no-padding">

        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
            <!-- ============================================================= LOGO ============================================================= -->
            <div class="logo">
                <a href="list">
                    <img alt="vmc_and_hmc" src="resources/images/vmc_and_hmc.svg" width="233" height="54"/>
                </a>
            </div>
            <!-- /.logo -->
            <!-- ============================================================= LOGO : END ============================================================= -->
        </div>
        <!-- /.logo-holder -->

        <div class="col-xs-12 col-sm-12 col-md-5 top-search-holder no-margin">
            <div class="contact-row">
                <div class="phone inline">
                    <i class="fa fa-phone"></i> USA: <span class="le-color">+1 203 556-50-69</span><br>
                </div>
                <br>
                <div class="contact inline">
                    <i class="fa fa-envelope"></i> contact@<span class="le-color">vmccnc.com</span>
                </div>
            </div>
            <!-- /.contact-row -->
        </div>
        <!-- /.top-search-holder -->

        <div class="col-xs-12 col-sm-12 col-md-4 top-cart-row no-margin">
            <div class="top-cart-row-container">
                <div class="wishlist-compare-holder">
                    <div class="wishlist">
                        <a href="#" onclick="goToWishList()"><i class="fa fa-heart"></i> wish list <span
                                id="wishList-value"></span> </a>
                    </div>
                    <div class="compare">
                        <a href="#" onclick="goToComparison()"><i class="fa fa-exchange"></i> comparison <span
                                id="compare-value"></span> </a>
                    </div>
                </div>

                <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
                <div class="top-cart-holder dropdown animate-dropdown">

                    <div class="basket">

                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <div class="basket-item-count">
                                <span class="count" id="cart-count"></span>
                                <img src="resources/images/icon-cart.png" alt=""/>
                            </div>

                            <div class="total-price-basket">
                                <span class="lbl">your cart:</span>
                                <span class="total-price">
                                    <span class="sign">$</span><span class="value cart-total">0</span>.00
                                </span>
                            </div>
                        </a>

                        <ul class="dropdown-menu">
                            <li id="li1" class="hidden">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-4 col-sm-4 no-margin text-center">
                                            <div class="thumb">
                                                <img width="75" height="75" src="resources/images/blank.gif">
                                            </div>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 no-margin">
                                            <div class="title"></div>
                                            <div class="price"></div>
                                        </div>
                                    </div>
                                    <a class="close-btn" href="."></a>
                                </div>
                            </li>
                            <li id="li2" class="hidden">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-4 col-sm-4 no-margin text-center">
                                            <div class="thumb">
                                                <img width="75" height="75" src="resources/images/blank.gif">
                                            </div>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 no-margin">
                                            <div class="title"></div>
                                            <div class="price"></div>
                                        </div>
                                    </div>
                                    <a class="close-btn" href="."></a>
                                </div>
                            </li>
                            <li id="li3" class="hidden">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-4 col-sm-4 no-margin text-center">
                                            <div class="thumb">
                                                <img width="75" height="75" src="resources/images/blank.gif">
                                            </div>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 no-margin">
                                            <div class="title"></div>
                                            <div class="price"></div>
                                        </div>
                                    </div>
                                    <a class="close-btn" href="."></a>
                                </div>
                            </li>
                            <li class="checkout">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="#" class="le-button" onclick="goToCart()">View cart</a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a href="#" class="le-button">Checkout</a>
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
            <!-- ============================================================= SHOPPING CART DROPDOWN : END ============================================================= -->
        </div>
        <!-- /.top-cart-row -->

    </div>
    <!-- /.container -->
</header>