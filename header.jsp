<%-- 
    Document   : header
    Created on : 05-Oct-2018, 18:06:20
    Author     : AnhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>

        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">	
                    <div class="header-top-in">			
                        <div class="logo">
                            <a href="index.jsp"><img src="images/logo.png" height="90px" width="200px" alt="Logo" ></a>
                        </div>
                        <div class="header-in">
                            <ul class="icon1 sub-icon1">
                                
                                <li ><a href="account.html">  Tài khoản  </a></li>
                                <li ><a href="#" > Giỏ hàng</a></li>
                                <li > <a href="checkout.html" > Kiểm tra đơn hàng </a> </li>	
                                <li ><div class="cart">
                                        <a href="#" class="cart-in"> </a>
                                        <span> 2 </span>
                                    </div>
                                    <ul class="sub-icon1 list">
                                        <h3>Đã chọn gần đây(2)</h3>
                                        <div class="shopping_cart">
                                            <div class="cart_box">
                                                <div class="message">
                                                    <div class="alert-close"> </div> 
                                                    <div class="list_img"><img src="images/book1.jpg" class="img-responsive" alt=""></div>
                                                    <div class="list_desc"><h4><a href="#">Steve Jobs</a></h4>1 x<span class="actual">
                                                            100.000</span></div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                            <div class="cart_box1">
                                                <div class="message1">
                                                    <div class="alert-close1"> </div> 
                                                    <div class="list_img"><img src="images/book2.jpg" class="img-responsive" alt=""></div>
                                                    <div class="list_desc"><h4><a href="#">Python ML</a></h4>1 x<span class="actual">
                                                            150.000</span></div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="total">
                                            <div class="total_left">Tổng tiền : </div>
                                            <div class="total_right">250.000</div>
                                            <div class="clearfix"> </div>
                                        </div>
                                        <div class="login_buttons">
                                            <div class="check_button"><a href="checkout.html"> Check </a></div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container">
                    <div class="h_menu4">
                        <a class="toggleMenu" href="#">Menu</a>
                        <ul class="nav">
                            <li class="active"><a href="index.jsp"><i> </i>Trang chủ</a></li>
                            <li ><a href="#" >Danh mục sách</a>
                                <ul class="drop">
                                    <li><a href="products.html">Sách thiếu nhi</a></li>
                                    <li><a href="products.html">Sách văn học</a></li>
                                    <li><a href="products.html">Sách giáo trình</a></li>
                                    <li><a href="products.html">Best seller</a></li>
                                </ul>
                            </li> 						
                            <li><a href="products.html" > Best seller </a></li>            
                            <li><a href="products.html" > Đăng kí </a></li>						  				 
                            <li><a href="products.html" > Đăng nhập </a></li>
                            
                            <li><a href="contact.jsp" > About us </a></li>

                        </ul>
                        <script type="text/javascript" src="js/nav.js"></script>
                    </div>
                </div>
            </div>
            <div class="header-bottom-in">
                <div class="container">
                    <div class="header-bottom-on">
                        <p class="wel"><a href="#"> Chào mừng bạn đến với Book for you !</a></p>
                        <div class="header-can">
                            <ul class="social-in">
                                <li><a href="#"><i> </i></a></li>
                                <li><a href="#"><i class="facebook"> </i></a></li>
                            </ul>	
                            <div class="down-top">		
                                <select class="in-drop">
                                    <option value="VND" class="in-of">VND</option>
                                    <option value="Dollar" class="in-of">Dollar</option>                                   
                                </select>
                            </div>
                            <div class="search">
                                <form>
                                    <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value === '') {
                                                                    this.value = '';
                                                                }" >
                                    <input type="submit" value="">
                                </form>
                            </div>

                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
