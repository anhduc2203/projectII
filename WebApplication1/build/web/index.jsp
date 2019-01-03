<%-- 
    Document   : index
    Created on : Nov 22, 2018, 10:57:05 AM
    Author     : unknown_HUST
--%>

<%@page import="model.Book"%>
<%@page import="dao.BookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookshop | Home ::</title>
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

        <%
            BookDAO bookDAO = new BookDAO();
        %>

        <jsp:include page="header.jsp"></jsp:include>
            <!--phan nay la banner-->
            <div id="fwslider">
                <div class="slider_container">
                    <div class="slide">
                        <!-- Slide image -->
                        <img src="images/banner4.jpg" alt="" />
                        <!-- /Slide image -->
                        <!-- Texts container -->
                        <div class="slide_content">
                            <div class="slide_content_wrap">
                                <!-- Text title -->
                                <h4 class="title">Aluminium Club</h4>
                                <!-- /Text title -->

                                <!-- Text description -->
                                <p class="description">Experiance ray ban</p>
                                <!-- /Text description -->
                            </div>
                        </div>
                        <!-- /Texts container -->
                    </div>
                    <!-- /Duplicate to create more slides -->
                    <div class="slide">
                        <img src="images/banner3.jpg" alt="" />
                        <div class="slide_content">
                            <div class="slide_content_wrap">
                                <h4 class="title">consectetuer adipiscing </h4>
                                <p class="description">diam nonummy nibh euismod</p>
                            </div>
                        </div>
                    </div>
                    <!--/slide -->
                </div>
                <div class="timers"></div>
                <div class="slidePrev"><span></span></div>
                <div class="slideNext"><span></span></div>
            </div>
            <!--ket thuc banner-->


            <div class="main">
                <div class="wrap">
                    <div class="section group">
                        <div class="cont span_2_of_3">
                            <h2 class="head">Featured Products</h2>
                            <div class="top-box">  
                            <%
                                int count1 = 1;
                                for (Book b : bookDAO.getListBookByCategory(1)) {
                                    if (count1 < 4) {
                            %>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="single.jsp?bookID=<%=b.getBookCode() %>">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="<%=b.getBookImage()%>" alt="<%=b.getBookName()%>" />
                                        </div>
                                        <!--<div class="sale-box"><span class="on_sale title_shop">New</span></div> -->
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title"><%=b.getBookName()%></p>
                                                <div class="price1">
                                                    <span class="actual">$<%=b.getBookPrice()%></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <%
                                    }
                                    count1++;
                                }
                            %>
                            <!--<div class="clear"></div> -->
                        </div>
                        <div class="top-box">
                            <%
                                int count2 = 1;
                                for (Book b : bookDAO.getListBookByCategory(2)) {
                                    if (count2 < 4) {
                            %>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="single.jsp?bookID=<%=b.getBookCode() %>">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="<%=b.getBookImage()%>" alt="<%=b.getBookName()%>" />
                                        </div>
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title"><%=b.getBookName()%></p>
                                                <div class="price1">
                                                    <span class="actual">$<%=b.getBookPrice()%></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <%
                                    }
                                    count2++;
                                }
                            %>
                            <div class="clear"></div>
                        </div>
                        <div class="top-box1">
                            <%
                                int count3 = 1;
                                for (Book b : bookDAO.getListBookByCategory(1)) {
                                    if ((count3 >= 4) && (count3 < 7)) {
                            %>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="single.jsp?bookID=<%=b.getBookCode() %>">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="<%=b.getBookImage()%>" alt="<%=b.getBookName()%>" />
                                        </div>
                                        <!--<div class="sale-box"><span class="on_sale title_shop">New</span></div> -->
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title"><%=b.getBookName()%></p>
                                                <div class="price1">
                                                    <span class="actual">$<%=b.getBookPrice()%></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <%
                                    }
                                    count3++;
                                }
                            %>
                            <div class="clear"></div>
                        </div>
                        

                        <h2 class="head">New Products</h2>
                        <div class="section group">
                            <%
                                int count4 = 1;
                                for (Book b : bookDAO.getListBookByCategory(1)) {
                                    if ((count4 >= 6) && (count4 < 9)) {
                            %>
                            <div class="col_1_of_3 span_1_of_3">
                                <a href="single.jsp?bookID=<%=b.getBookCode() %>">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="<%=b.getBookImage()%>" alt="<%=b.getBookName()%>" />
                                        </div>
                                        <div class="sale-box"><span class="on_sale title_shop">New</span></div>
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title"><%=b.getBookName()%></p>
                                                <div class="price1">
                                                    <span class="actual">$<%=b.getBookPrice()%></span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <%
                                    }
                                    count4++;
                                }
                            %>                    
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                            
                            
                    <div class="rsidebar span_1_of_left">
                        <div class="top-border"> </div>
                        <div class="border">
                            <link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
                            <link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="all" />
                            <script src="js/jquery.nivo.slider.js"></script>
                            <script type="text/javascript">
                                $(window).load(function () {
                                    $('#slider').nivoSlider();
                                });
                            </script>
                            <div class="slider-wrapper theme-default">
                                <div id="slider" class="nivoSlider">
                                    <img src="images/bia1.jpg" alt="" />
                                    <img src="images/bia2.jpg" alt="" />
                                    <img src="images/bia3.jpg" alt="" />
                                </div>
                            </div>
                            <div class="btn"><a href="single.html">Check it Out</a></div>
                        </div> 
                        <div class="top-border"> </div>
                        <div class="sidebar-bottom">
                            <h2 class="m_1">Newsletters<br> Signup</h2>
                            <p class="m_text">Lorem ipsum dolor sit amet, consectetuer</p>
                            <div class="subscribe">
                                <form>
                                    <input name="userName" type="text" class="textbox">
                                    <input type="submit" value="Subscribe">
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