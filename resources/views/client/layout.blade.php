

<!doctype html>
<html lang="zxx" >

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>LAPTOP SHOP | @yield('title')</title>
  <link rel="shortcut icon" href="{!! asset('client-asset/images/favicon.png')!!}" type="image/png" />
  <!-- Template CSS -->
  <link rel="stylesheet" href="{!! asset('client-asset/css/style-starter.css')!!}">
  <!-- Template CSS -->
  <link href="//fonts.googleapis.com/css?family=Oswald:300,400,500,600&display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900&display=swap" rel="stylesheet">
  <!-- Template CSS -->

</head>
<body>
<section class="w3l-banner-slider-main inner-pagehny">
  <div class="breadcrumb-infhny">

    <div class="top-header-content">

      <header class="tophny-header">
        <div class="container-fluid">
          <div class="top-right-strip row">
            <!--/left-->
            <div class="top-hny-left-content col-lg-6 pl-lg-0">
              <!--Trên cùng bên trái -->
            </div>
            <!--//left-->
            <!--/right-->
              <!--Trên cùng bên phải -->
            <ul class="top-hnt-right-content col-lg-6">
                <?php 
                if(Auth::guard('customer')->check())
                {
                ?>
                  <li class="usernhy">
                    Xin Chào, <?php echo Auth::guard('customer')->user()->name; ?>
                    <a class="btn-open" href="{{route('get-client-logout')}}">
                      <span class="fa fa-sign-out" aria-hidden="true"></span>
                    </a>
                  </li>
                <?php
                }
                else
                {
                ?>
                  <li class="button-log usernhy">
                    <a class="btn-open" href="#">
                      <span class="fa fa-user" aria-hidden="true"></span>
                    </a>
                  </li>
                <?php
                }
                ?>
                <li class="transmitvcart galssescart2 cart cart box_1">
                    <form action="#" method="post" class="last">
                        <input type="hidden" name="cmd" value="_cart">
                        <input type="hidden" name="display" value="1">
                        <button class="top_transmitv_cart"type="submit" name="submit" value="">
                            Giỏ Hàng
                            <span class="fa fa-shopping-cart"></span>
                        </button>
                    </form>
                </li>
            </ul>
            <!--//right-->
            <div class="overlay-login text-left">
              <button type="button" class="overlay-close1">
                <i class="fa fa-times" aria-hidden="true"></i>
              </button>
              <div class="wrap">
                <h5 class="text-center mb-4">Đăng nhập</h5>
                <div class="login-bghny p-md-5 p-4 mx-auto mw-100">
                  <!--/login-form-->
				  <form action="{{route('post-client-login')}}" method="post">
					{{csrf_field()}}
                    <div class="form-group">
                      <p class="login-texthny mb-2">Email</p>
                      <input type="email" class="form-control" id="exampleInputEmail1"
                        aria-describedby="emailHelp" name="email" placeholder="" required="">
                      <small id="emailHelp" class="form-text text-muted"></small>
                    </div>
                    <div class="form-group">
                      <p class="login-texthny mb-2">Mật Khẩu</p>
                      <input type="password" class="form-control" name ="password" id="exampleInputPassword1"
                        placeholder="" required="">
                    </div>
                    <div class="form-check mb-2">
                      <div class="userhny-check">
                        <label class="check-remember container">
                          <input type="checkbox" class="form-check"> <span
                            class="checkmark"></span>
                          <p class="privacy-policy">Ghi nhớ mật khẩu</p>
                        </label>
                        <div class="clearfix"></div>
                      </div>
                    </div>
                    <button type="submit" class="submit-login btn mb-4">Đăng Nhập</button>
                    <p>Nếu chưa có tài khoản đăng kí <a href="{{route('get-client-account')}}" id="dangki"><u>tại đây</u></a></p>
                  </form>
                  
                  <!--//login-form-->
                </div>
                <!---->
              </div>
            </div>
          </div>
        </div>
        <!--/nav-->
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid serarc-fluid">
            <a class="navbar-brand" href="{{route('get-client-home')}}">
              LapTop Shop</a>
            <!-- if logo is image enable this   
                <a class="navbar-brand" href="#index.html">
                  <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                </a> -->
            <!--/search-right-->
            <div class="search-right">
  
              <a href="#search" title="search"><span class="fa fa-search mr-2" aria-hidden="true"></span>
                <span class="search-text">Tìm kiếm</span></a>
              <!-- search popup -->
              <div id="search" class="pop-overlay">
                <div class="popup">
  
                  <form action="{{route('get-client-productSearch')}}" method="get" class="search-box">
                    <input type="search" placeholder="Từ khóa" name="search" required="required"
                      autofocus="">
                    <button type="submit" class="btn">Tìm</button>
                  </form>
  
                </div>
                <a class="close" href="#">×</a>
              </div>
              <!-- /search popup -->
            </div>
            <!--//search-right-->
            <button class="navbar-toggler" type="button" data-toggle="collapse"
              data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
              aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon fa fa-bars"> </span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link" href="{{route('get-client-home')}}">Trang Chủ</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown" data-toggle="dropdown" href="#">Danh Mục</a>
                  <div class="dropdown-menu">
                    @foreach($all_category ?? '' as $category)
                    <a class="dropdown-item" href="{{route('get-client-productByCategory',$category->id)}}">{{$category->name}}</a>
                    @endforeach
                  </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown" data-toggle="dropdown" href="#">Thương Hiệu</a>
                    <div class="dropdown-menu">
                    @foreach($all_brand ?? '' as $brand)
                    <a class="dropdown-item" href="{{route('get-client-productByBrand',$brand->id)}}">{{$brand->name}}</a>
                    @endforeach
                    </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{route('get-client-about')}}">Giới Thiệu</a>
                </li>
                <?php
				if(!Auth::guard('customer')->check())
				{
                ?>
                    <li class="nav-item">
                    <a class="nav-link" href="{{route('get-client-account')}}">Tài Khoản</a>
                    </li>
                <?php
                } 
                ?>
  
                <li class="nav-item">
                  <a class="nav-link" href="{{route('get-client-contact')}}">Liên Hệ</a>
                </li>
              </ul>
  
            </div>
          </div>
        </nav>
        <!--//nav-->
      </header>
      <div class="breadcrumb-contentnhy">
        <div class="container">
          <nav aria-label="breadcrumb">
            <h2 class="hny-title text-center">@yield('breadcrumb')</h2>
            <ol class="breadcrumb mb-0">
              <li><a href="{{route('get-client-home')}}">Trang Chủ</a>
                <span class="fa fa-angle-double-right"></span></li>
              <li class="active">@yield('breadcrumb')</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
</section>

    @yield("content")

<section class="w3l-footer-22">
    <!-- footer-22 -->
     <div class="footer-hny py-5">
          <div class="container py-lg-5">
              <div class="text-txt row">
                  <div class="col-lg-5">
                    <h3><a class="logo-footer" href="{{route('get-client-home')}}">
                      LAPTOP SHOP</a></h3>
                    <!-- if logo is image enable this   
                                  <a class="navbar-brand" href="#index.html">
                                      <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                  </a> -->
                    <p>LAPTOP SHOP xuất hiện trên thị trường từ năm 2000. LapTop Shop được biết đến là đơn vị bán lẻ lâu đời và uy tín tại Việt Nam. </p>
                    <ul class="social-footerhny mt-lg-5 mt-4">

                          <li><a class="facebook" href="https://www.facebook.com/NhatMinh0509/"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                          </li>
                          <li><a class="linkedin" href="https://www.linkedin.com/in/nhatminh0509/"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                          </li>
                          <li><a class="google" href="https://www.youtube.com/channel/UCLXkvG3-WJguCHuPlS_gUxw?view_as=subscriber"><span class="fa fa-youtube" aria-hidden="true"></span></a>
                          </li>
                          <li><a class="instagram" href="https://www.instagram.com/nhatminh.0509/"><span class="fa fa-instagram" aria-hidden="true"></span></a>
                          </li>
                      </ul>
                    </div>

                    <div class="col-lg-3 pl-lg-5">
                            <h6>Liên Kết Nhanh</h6>
                            <div class="footer-hny-ul">
                                <ul>
                                    <li><a href="{{route('get-client-home')}}">Trang Chủ</a></li>
                                    <li><a href="{{route('get-client-product')}}">Sản Phẩm</a></li>
                                    <li><a href="{{route('get-client-about')}}">Giới Thiệu</a></li>
                                    <?php
										if(!Auth::guard('customer')->check())
										{
										?>
										<li><a href="{{route('get-client-account')}}">Tài Khoản</a></li>
										<?php } ?>
                                    <li><a href="{{route('get-client-contact')}}">Liên Hệ</a></li>
                                </ul>
                                <!-- <ul>
                                    <li><a href="#">Careers</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms and Conditions</a></li>
                                    <li><a href="contact.html">Support</a></li>
                                </ul> -->
                        </div>
                     </div>
          <div class="col-lg-4 pl-lg-5">
          <h6>Hệ Thống Cửa Hàng</h6>
          <li style="color: white;">* Chi Nhánh Hà Nội:</li>
          <li style="color: white; margin-left: 15px;font-size: 12px;"> + 49-51 Hồ Đắc Di, Nam Đồng, Đống Đa, Hà Nội.</li>
          <li style="color: white; margin-left: 15px;font-size: 12px;"> + Tầng 7 Vincom Bà Triệu, Hai Bà Trưng, Hà Nội</li>
          <h6>We accept:</h6>
          <ul>
            <li id="pay-method"><a class="pay-method" href="#"><span class="fa fa-cc-visa"
                  aria-hidden="true"></span></a>
            </li>
            <li id="pay-method"><a class="pay-method" href="#"><span class="fa fa-cc-mastercard"
                  aria-hidden="true"></span></a>
            </li>
            <li id="pay-method"><a class="pay-method" href="#"><span class="fa fa-cc-paypal"
                  aria-hidden="true"></span></a>
            </li>
            <li id="pay-method"><a class="pay-method" href="#"><span class="fa fa-cc-amex"
                  aria-hidden="true"></span></a>
            </li>
          </ul>
                  </div>
      </div>

      <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fa fa-angle-double-up"></span>
      </button>
      <form action="#" method="post" class="last">
        <input type="hidden" name="cmd" value="_cart">
        <input type="hidden" name="display" value="1">
        <button class="top_transmitv_cart"type="submit" id="giohang" name="submit" value="">
          <span class="fa fa-shopping-cart"></span>
        </button>
      </form>
    </div>
    </div>
    <!-- //titels-5 -->
    <!-- move top -->

    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("movetop").style.display = "block";
        document.getElementById("giohang").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
                document.getElementById("giohang").style.display = "none";
            }
        }
    top_transmitv_cart
        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->
</section>


</body>

</html>

<script src="{!! asset('client-asset/js/jquery-3.3.1.min.js')!!}"></script>
<script src="{!! asset('client-asset/js/jquery-2.1.4.min.js')!!}"></script>
<!--/login-->
<script>
  $(document).ready(function () {
    $(".button-log a").click(function () {
      $(".overlay-login").fadeToggle(200);
      $(this).toggleClass('btn-open').toggleClass('btn-close');
    });
  });
  $('.overlay-close1').on('click', function () {
    $(".overlay-login").fadeToggle(200);
    $(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
    open = false;
  });
</script>
<!--//login-->
<script>
// optional
  $('#customerhnyCarousel').carousel({
      interval: 5000
  });
</script>
<!-- cart-js -->
<script src="{!! asset('client-asset/js/minicart.js')!!}"></script>
<script>
   transmitv.render({     
    action:"{{route('test')}}",
    template: '<%var items = cart.items();var settings = cart.settings();var hasItems = !!items.length;var priceFormat = { format: true, currency: cart.settings("currency_code") };var totalFormat = {  showCode: true, format: true };%><form method="post" class="<% if (!hasItems) { %>sbmincart-empty<% } %>" action="<%= config.action %>" target="<%= config.target %>">  <div class="sbmincart-suc-cart-text"> Giỏ Hàng  <input type="hidden" name="soluongsp" value="<%= items.length %>" />       </div> {{csrf_field()}}   <button type="button" class="sbmincart-closer">&times;</button>    <ul>        <% for (var i= 0, idx = i + 1, len = items.length; i < len; i++, idx++) { %>  <input type="hidden" name="id_<%= idx %>" value="<%= items[i].get("id") %>" />        <li class="sbmincart-item">            <div class="sbmincart-details-name">                <a class="sbmincart-name" href="<%= items[i].get("href") %>"><%= items[i].get("transmitv_item") %></a>                <ul class="sbmincart-attributes">                    <% if (items[i].get("item_number")) { %>                    <li>                        <%= items[i].get("item_number") %>                        <input type="hidden" name="item_number_<%= idx %>" value="<%= items[i].get("item_number") %>" />         </li>                    <% } %>                    <% if (items[i].discount()) { %>                    <li>                        <%= config.strings.discount %> <%= items[i].discount(priceFormat) %>                        <input type="hidden" name="discount_amount_<%= idx %>" value="<%= items[i].discount() %>" />                    </li>                    <% } %>                    <% for (var options = items[i].options(), j = 0, len2 = options.length; j < len2; j++) { %>                        <li>                            <%= options[j].key %>: <%= options[j].value %>                            <input type="hidden" name="on<%= j %>_<%= idx %>" value="<%= options[j].key %>" />                            <input type="hidden" name="os<%= j %>_<%= idx %>" value="<%= options[j].value %>" />                        </li>                    <% } %>                </ul>            </div>            <div class="sbmincart-details-quantity">                <input class="sbmincart-quantity" data-sbmincart-idx="<%= i %>" name="soluong_<%= idx %>" type="text" pattern="[0-9]*" value="<%= items[i].get("quantity") %>" autocomplete="off" />            </div>            <div class="sbmincart-details-remove">                <button type="button" class="sbmincart-remove" data-sbmincart-idx="<%= i %>">&times;</button>            </div>            <div class="sbmincart-details-price">                <span class="sbmincart-price"><%= items[i].total(priceFormat) %></span>            </div>            <input type="hidden" name="ten_sp_<%= idx %>" value="<%= items[i].get("transmitv_item") %>" />            <input type="hidden" name="gia_sp_<%= idx %>" value="<%= items[i].amount() %>" />                    </li>        <% } %>    </ul>    <div class="sbmincart-footer">        <% if (hasItems) { %>            <div class="sbmincart-subtotal">                <%= config.strings.subtotal %> <%= cart.total(totalFormat) %>            </div>            <button class="sbmincart-submit" type="submit" data-sbmincart-alt="<%= config.strings.buttonAlt %>"><%- config.strings.button %></button>        <% } else { %>            <p class="sbmincart-empty-text"><%= config.strings.empty %></p>        <% } %>     </form>'
	});

   transmitv.cart.on('transmitv_checkout', function (evt) {
       var items, len, i;

       if (this.subtotal() > 0) {
           items = this.items();

           for (i = 0, len = items.length; i < len; i++) {}
        }
    });

</script>
<!-- //cart-js -->
<!--pop-up-box-->
<script src="{!! asset('client-asset/js/jquery.magnific-popup.js')!!}"></script>
<!--//pop-up-box-->
<script>
$(document).ready(function () {
  $('.popup-with-zoom-anim').magnificPopup({
    type: 'inline',
    fixedContentPos: false,
    fixedBgPos: true,
    overflowY: 'auto',
    closeBtnInside: true,
    preloader: false,
    midClick: true,
    removalDelay: 300,
    mainClass: 'my-mfp-zoom-in'
  });

});
</script>
<!--//search-bar-->
<!-- disable body scroll which navbar is in active -->

<script>
$(function () {
  $('.navbar-toggler').click(function () {
    $('body').toggleClass('noscroll');
  })
});
</script>
<!-- disable body scroll which navbar is in active -->
<script src="{!! asset('client-asset/js/bootstrap.min.js')!!}"></script>
