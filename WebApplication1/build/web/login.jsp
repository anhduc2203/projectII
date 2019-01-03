<%-- 
    Document   : login
    Created on : Nov 22, 2018, 11:06:17 AM
    Author     : unknown_HUST
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login ::</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () { $(".megamenu").megamenu(); });</script>
        <!-- dropdown -->
        <script src="js/jquery.easydropdown.js"></script>
    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="login">
            <div class="wrap">
                <div class="col_1_of_login span_1_of_login">
                    <h4 class="title">New Account</h4>
                    <p>Nếu bạn chưa có tài khoản hãy tạo một tài khoản mới để sử dụng dịch vụ của chúng tôi!</p>
                    <br>
                    <div class="button1">
                        <a href="register.jsp"><input type="submit" name="Submit" value="Create an Account"></a>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="col_1_of_login span_1_of_login">
                    <div class="login-title">
                        <h4 class="title">Đăng nhập</h4>
                        <div id="loginbox" class="loginbox">
                            <form action="AccountServlet" method="post" name="login" id="login-form">
                                
                                <%if (request.getParameter("error") != null) {%>
                                <div>
                                    <p style="color: red"><%=request.getParameter("error") %></p>
                                </div>
                                <%}%>
                                <fieldset class="input">
                                    <p id="login-form-username">
                                        <label for="modlgn_username">Tên đăng nhập</label>
                                        <input id="modlgn_username" type="text" name="username" class="inputbox" size="18" autocomplete="off">
                                    </p>
                                    <p id="login-form-password">
                                        <label for="modlgn_passwd">Mật khẩu</label>
                                        <input id="modlgn_passwd" type="password" name="password" class="inputbox" size="18" autocomplete="off">
                                    </p>
                                    <div class="remember">
                                        <p id="login-form-remember">
                                            <label for="modlgn_remember"><a href="#">Forget Your Password ?</a></label>
                                        </p>
                                        
                                        <button class="grey" type="hidden" value="login" name="command">Login</button>
                                        
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
