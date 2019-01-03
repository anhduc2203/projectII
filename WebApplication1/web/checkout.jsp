<%-- 
    Document   : checkout
    Created on : Jan 3, 2019, 1:56:42 PM
    Author     : AnhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check out</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="js/jquery1.min.js"></script>
	<!-- start menu -->
	<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/megamenu.js"></script>
	<script>$(document).ready(function () { $(".megamenu").megamenu(); });</script>
	<!--start slider -->
	<link rel="stylesheet" href="css/fwslider.css" media="all">
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/css3-mediaqueries.js"></script>
	<script src="js/fwslider.js"></script>
	<!--end slider -->
	<script src="js/jquery.easydropdown.js"></script>
    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>
        
            <div class="login">
                <div class="wrap">
                    <div class="col_1_of_login span_1_of_login">
                        <h4 class="title">New Account</h4>
                        <p>Nếu bạn chưa có tài khoản hãy tạo một tài khoản mới để sử dụng dịch vụ của chúng tôi!</p>
                        <div class="button1">
                            <a href="register.jsp"><input type="submit" name="Submit" value="Create an Account"></a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="col_1_of_login span_1_of_login">
                        <div class="login-title">
                            <h4 class="title">Mời bạn nhập thông tin thanh toán</h4>
                            <div id="loginbox" class="loginbox">
                                <form action="AccountServlet" method="post" name="login" id="login-form">
                                <fieldset class="input">
                                    <div>
                                        <span>Địa chỉ giao hàng</span>
                                        <input id="modlgn_username" type="text" name="address" class="inputbox" size="18" autocomplete="off">
                                    </div>
                                    <br>
                                    <div>
                                        <span>Payment</span>
                                        <br>
                                        <select name="payment">
                                            <option value="Bank transfer">Bank transfer</option>
                                            <option value="Live">Live</option>
                                        </select>
                                    </div>
                                    
                                    <div class="remember">
                                        
                                        <button class="grey" type="hidden" value="checkout" name="command">Checkout</button>

                                        <div class="clear"></div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        
    </body>
</html>
