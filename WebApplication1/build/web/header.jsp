<%-- 
    Document   : header
    Created on : Nov 22, 2018, 10:59:33 AM
    Author     : unknown_HUST
--%>

<%@page import="org.apache.catalina.ant.ListTask"%>
<%@page import="model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="model.Cart"%>
<%@page import="model.Account"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <!--start slider -->
        <link rel="stylesheet" href="css/fwslider.css" media="all">
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/css3-mediaqueries.js"></script>
        <script src="js/fwslider.js"></script>
        <!--end slider -->
        <script src="js/jquery.easydropdown.js"></script>
    </head>
    <body>

        <%
            CategoryDAO categoryDAO = new CategoryDAO();
            Account account = null;
            if (session.getAttribute("account")!=null){
                account = (Account) session.getAttribute("account");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if(cart == null){
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>

        <div class="header-top">
            <div class="wrap">
                <div class="header-top-left">
                    <div class="box">
                        <select tabindex="4" class="dropdown">
                            <!--<option value="" class="label" value="">Language :</option> -->
                            <option value="1">English</option>

                        </select>
                    </div>
                    <div class="box1">
                        <select tabindex="4" class="dropdown">
                            <option value="" class="label" value="">Currency :</option>
                            <option value="1">$ Dollar</option>

                        </select>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="login.jsp">Account</a></li> |
                        <!--<li><a href="checkout.html">Wishlist</a></li> | -->
                        <li><a href="checkout.jsp">Checkout</a></li> |
                        <li><a href="login.jsp">Log In</a></li> |
                        <li><a href="register.jsp">Sign Up</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">
                <div class="header-bottom-left">
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo.png" alt="" /></a>
                    </div>
                    <div class="menu">
                        <ul class="megamenu skyblue">
                            <li class="active grid"><a href="index.jsp">Home</a></li>
                            <li><a class="color4" href="#">English Book</a>
                                <div class="megapanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Contact </h4>
                                                <ul>
                                                    <%
                                                        for (Category c : categoryDAO.getCategory()) {
                                                    %>
                                                    <li><a href="engbook.jsp?category=<%=c.getCategoryID() %>"><%=c.getCategoryName() %></a></li>
                                                    <%
                                                        }
                                                    %>
                                                </ul>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li><a class="color5" href="#">Sách tiếng việt</a>
                                <div class="megapanel">
                                    <div class="col1">
                                        <div class="h_nav">
                                            <h4>Contact</h4>
                                            <ul>
                                                <li><a href="mens.html">lập trình</a></li>
                                                <li><a href="mens.html">Ngoại ngữ</a></li>
                                                <li><a href="mens.html">Toán học, vật lý</a></li>
                                                <li><a href="mens.html">Khác</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </li>
                            <li><a class="color6" href="other.jsp">Other</a></li>
                            <li><a class="color7" href="other.jsp">Purchase</a></li>
                        </ul>
                    </div>
                </div>
                <div class="header-bottom-right">
                    <div class="search">
                        <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Search';
                                }">
                        <input type="submit" value="Subscribe" id="submit" name="submit">
                        <div id="response"> </div>
                    </div>
                    <div class="tag-list">
                        <ul class="icon1 sub-icon1 profile_img">
                            <li><a class="active-icon c1" href="#"> </a>
                                <ul class="sub-icon1 list">
                                    <li>
                                        <h3>sed diam nonummy</h3><a href=""></a>
                                    </li>
                                    <li>
                                        <p>Lorem ipsum dolor sit amet, consectetuer <a href="">adipiscing elit, sed diam</a></p>
                                    </li>
                                </ul>
                            </li>
                        </ul
                        
                        <!--Phan gio hang-->
                        <ul class="icon1 sub-icon1 profile_img">
                            <li><a class="active-icon c2" href="#"> </a>
                                <ul class="sub-icon1 list">

                                    <!--Hien thi gio hang phan header-->
                                    <div class="shopping_cart">
                                        
                                        <% for (Map.Entry<String, Item> list : cart.getCartItem().entrySet()) {%>
                                        <div class="cart_box">
                                            <div class="message">
                                                <div class="alert-close"> </div> 
                                                <div class="list_img"><img src="<%=list.getValue().getBook().getBookImage()%>" class="img-responsive" alt=""></div>
                                                <div class="list_desc"><h4><a href="CartServlet?command=remove&bookID=<%=list.getValue().getBook().getBookCode()%>"><%=list.getValue().getBook().getBookName()%></a></h4>
                                                    <%=list.getValue().getQuantity()%> x<span class="actual">$<%=list.getValue().getBook().getBookPrice()%></span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <%}%>
                                        
                                    </div>
                                    <div class="total">
                                        <div class="total_left">CartSubtotal : </div>
                                        <div class="total_right">$<%=cart.totalCart()%></div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div>
                                        <div class="check_button"><a href="checkout.jsp">Check out</a></div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <!--Hien thi gio hang phan header-->


                                </ul>
                            </li>
                        </ul>
                        <ul class="last">
                            <li><a href="#">Cart(<%=cart.countItem()%>)</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>

    </body>
</html>
