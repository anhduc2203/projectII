<%-- 
    Document   : footer
    Created on : 08-Oct-2018, 02:43:52
    Author     : AnhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
         <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
                    $(function () {
                        $("#slider1").responsiveSlides({
                            auto: true,
                            speed: 500,
                            namespace: "callbacks",
                            pager: true
                        });
                    });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
    </head>
    <body>

        <!---->
        <div class="footer">
            <div class="footer-top">
                <div class="container">
                    <!--<div class="col-md-4 footer-in">-->
                        <h4><i> </i> Từ khóa </h4>
                        <p><a href="#"><ins>Best seller</ins></a> / <a href="#"><ins>Danh mục</ins></a> / <a href="#"><ins>Rừng Na Uy</ins></a> / <a href="#"><ins>Walter Issacsion</ins></a>
                            / <a href="#"><ins>Python</ins></a> / <a href="#"><ins>Novel</ins></a> / <a href="#"><ins>Murakami</ins></a> / <a href="#"><ins>Ichikawa Takuji</ins></a>
                            / <a href="#"><ins>Java Core</ins></a> / <a href="#"><ins>SVM Book</ins></a> / <a href="#"><ins>Deep Learning</ins></a>
                            / <a href="#"><ins>When breath becomes air</ins></a>
                        </p>
                    <!--</div>-->
                    
                    <div class="clearfix"></div>
                </div>
            </div>
            <!---->
            <div class="footer-middle">
                <div class="container">
                    <div class="footer-middle-in">
                        <h6>About us</h6>
                        <p>Đồ án II Phân tích thiết kế hệ thống</p>
                    </div>
                    <div class="footer-middle-in">
                        
                    </div>
                    <div class="footer-middle-in">
                        <h6>Information</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Thông tin đơn hàng</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Điều khoản dịch vụ</a></li>
                        </ul>
                    </div>
                    <div class="footer-middle-in">
                        <h6>Tài khoản</h6>
                        <ul>
                            <li><a href="account.html"> Thông tin tài khoản </a></li>
                            <li><a href="#"> Lịch sử mua hàng </a></li>
                        </ul>
                    </div>
                    <div class="footer-middle-in">
                        <h6>Chăm sóc khách hàng</h6>
                        <ul>
                            <li><a href="#"> Vouchers </a></li>
                            <li><a href="#"> Quà tặng </a></li>
                            <li><a href="#"> Hot sales </a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <p class="footer-class">Copyright © 2018 Modern Template by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
            <script type="text/javascript">
                $(document).ready(function () {
                    /*
                     var defaults = {
                     containerID: 'toTop', // fading element id
                     containerHoverID: 'toTopHover', // fading element hover id
                     scrollSpeed: 1200,
                     easingType: 'linear' 
                     };
                     */

                    $().UItoTop({easingType: 'easeOutQuart'});

                });
            </script>
            <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

        </div>

    </body>
</html>
