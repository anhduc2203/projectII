<%-- 
    Document   : register
    Created on : Nov 22, 2018, 11:08:01 AM
    Author     : unknown_HUST
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register ::</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () { $(".megamenu").megamenu(); });</script>
        <script src="js/jquery.easydropdown.js"></script>
        
        
        <!-- Doan ajax kiem tra account da ton tai chua -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
              $(document).ready(function () {
                   var x_timer;
                   $("#username").keyup(function (e) {
                        clearTimeout(x_timer);
                        var user_name = $(this).val();
                        x_timer = setTimeout(function () {
                            check_username_ajax(user_name);
                        }, 1000);
                        });

                   function check_username_ajax(username) {
                        $("#user-result").html('<img src="img_controller/ajax-loader.gif" />');
                        $.post('CheckAccountServlet', {'username': username}, function (data) {
                            $("#user-result").html(data);
                         });
                   }
               });
        </script>
        
        <!-- Ket thuc doan ajax --- doan ma nay chua thanh cong !!!!! -->
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="register_account">
            <div class="wrap">
                <h4 class="title">Create an Account</h4>
                <form action="AccountServlet" method="POST">
                    <div class="col_1_of_2 span_1_of_2">
                        <div><input type="text" name="username" id="username" value="User Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}"><span id="user-result"></span></div>
                        <div><input type="text" name="password" id="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></div>
                        <div><input type="text" name="name" id="name" value="Full Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"></div>
                        <div><input type="text" name="ctyorschool" id="ctyorschool" value="Company or School" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Company or School';}"></div>

                        <!--</div>
                        <div class="col_1_of_2 span_1_of_2">-->
                        <div><input type="text" name="email" id="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"></div>
                        <div><input type="text" name="phonenumber" id="phonenumber" value="Phone Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone Number';}"></div>
                        <div><input type="text" name="address" id="address" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}"></div>
                        <div><select id="country" name="country" onchange="change_country(this.value)" class="frm-field required">
                                <option value="null">Select a Country</option>                           
                                <option value="Viet Nam">Viet Nam</option>
                                <option value="Korea">Korea</option>
                                <option value="USA">USA</option>
                            </select>
                        </div> 
                        <button class="grey" type="hidden" value="register" name="command">Create Account</button>
                        <!--button class="grey">Create Account</button-->

                        <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
                    </div>

                    <div class="clear"></div>
                </form> 
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
