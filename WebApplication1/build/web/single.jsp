<%-- 
    Document   : single
    Created on : Dec 19, 2018, 2:10:05 PM
    Author     : unknown_HUST
--%>

<%@page import="model.Cart"%>
<%@page import="dao.AuthorDAO"%>
<%@page import="model.Author"%>
<%@page import="model.Category"%>
<%@page import="model.Book"%>
<%@page import="dao.BookDAO"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sản phẩm</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
        <script src="js/jquery1.min.js"></script>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () { $(".megamenu").megamenu(); });</script>
        <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
        <script type="text/javascript" id="sourcecode">
                $(function () {
                        $('.scroll-pane').jScrollPane();
                });
        </script>
        <!-- start details -->
        <script src="js/slides.min.jquery.js"></script>
        <script>
            $(function () {
                $('#products').slides({
                    preload: true,
                    preloadImage: 'img/loading.gif',
                    effect: 'slide, fade',
                    crossfade: true,
                    slideSpeed: 350,
                    fadeSpeed: 500,
                    generateNextPrev: true,
                    generatePagination: false
                });
            });
        </script>
        <link rel="stylesheet" href="css/etalage.css">
        <script src="js/jquery.etalage.min.js"></script>
        <script>
            jQuery(document).ready(function ($) {

                $('#etalage').etalage({
                    thumb_image_width: 360,
                    thumb_image_height: 360,
                    source_image_width: 900,
                    source_image_height: 900,
                    show_hint: true,
                    click_callback: function (image_anchor, instance_id) {
                        alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                    }
                });

            });
        </script>
    </head>
    <body>
        
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
            BookDAO bookDAO = new BookDAO();
            AuthorDAO authorDAO = new AuthorDAO();
            String bookID = "";
            if(request.getParameter("bookID") != null){
                bookID = request.getParameter("bookID");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart==null){
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="mens">
            <div class="main">
                <div class="wrap">
                <%
                    Book b = bookDAO.getBookByBookID(bookID);
                    String category = categoryDAO.getCategory(b.getBookCategory());
                    String aut = authorDAO.getAuthorByID(b.getAuthor());
                %>
                <ul class="breadcrumb breadcrumb__t"><a class="home" href="index.jsp">Home</a> / <a href="engbook.jsp?category=<%=b.getBookCategory() %>"><%=category %></a> / <%=b.getBookName() %></ul>
                    <div class="cont span_2_of_3">
                        <div class="grid images_3_of_2">
                            <img src="<%=b.getBookImage() %>" alt="<%=b.getBookName() %>" />

                            <div class="clearfix"></div>
                        </div>
                        <div class="desc1 span_3_of_2">
                            <h3 class="m_3"><%=b.getBookName() %></h3>
                            <p class="m_text2">Author: <%=aut %> </p>
                            <p class="m_5">Price: $<%=b.getBookPrice() %></p>
                            <div class="btn_form">
                                <form>
                                    <a href="CartServlet?command=plus&bookID=<%=b.getBookCode()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">ADD TO CART</a>
                                </form>
                            </div>
                            <!--<span class="m_link"><a href="#">login to save in wishlist</a> </span>-->
                            <p class="m_text2"><%=b.getBookDescription() %> </p>
                        </div>
                        <div class="clear"></div>
                        <div class="clients">
                            <h3 class="m_3">Other Books in the same category</h3>
                            <div class="nbs-flexisel-container">
                                <div class="nbs-flexisel-inner">
                                    <ul id="flexiselDemo3" class="nbs-flexisel-ul" style="left: -187.4px; display: block;">
                                        <%
                                            for(Book b2 : bookDAO.getListBookByCategory(b.getBookCategory())){
                                        %>
                                        <a href="single.jsp?bookID=<%=b2.getBookCode() %>">
                                            <li class="nbs-flexisel-item" style="width: 187.4px;"><img src="<%=b2.getBookImage()%>">
                                                <p>$ <%=b2.getBookPrice()%></p>
                                            </li>
                                        </a>
                                        <%
                                            }
                                        %>
                                    </ul>
                                    <div class="nbs-flexisel-nav-left" style="top: 88px;"></div>
                                    <div class="nbs-flexisel-nav-right" style="top: 88px;"></div>
                                </div>
                            </div>
                            <script type="text/javascript">
                                    $(window).load(function () {
                                            $("#flexiselDemo1").flexisel();
                                            $("#flexiselDemo2").flexisel({
                                                    enableResponsiveBreakpoints: true,
                                                    responsiveBreakpoints: {
                                                            portrait: {
                                                                    changePoint: 480,
                                                                    visibleItems: 1
                                                            },
                                                            landscape: {
                                                                    changePoint: 640,
                                                                    visibleItems: 2
                                                            },
                                                            tablet: {
                                                                    changePoint: 768,
                                                                    visibleItems: 3
                                                            }
                                                    }
                                            });

                                            $("#flexiselDemo3").flexisel({
                                                    visibleItems: 5,
                                                    animationSpeed: 1000,
                                                    autoPlay: false,
                                                    autoPlaySpeed: 3000,
                                                    pauseOnHover: true,
                                                    enableResponsiveBreakpoints: true,
                                                    responsiveBreakpoints: {
                                                            portrait: {
                                                                    changePoint: 480,
                                                                    visibleItems: 1
                                                            },
                                                            landscape: {
                                                                    changePoint: 640,
                                                                    visibleItems: 2
                                                            },
                                                            tablet: {
                                                                    changePoint: 768,
                                                                    visibleItems: 3
                                                            }
                                                    }
                                            });

                                    });
                            </script>
                            <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                        </div>
                        <div class="toogle">
                            <h3 class="m_3">Book Details</h3>
                            <p class="m_text"><%=b.getBookDescription() %>.</p>
                        </div>
                        <div class="toogle">
                            <h3 class="m_3">More Information</h3>
                            <p class="m_text"><%=b.getBookDescription() %>.</p>
                        </div>
                    </div>
                        
                        
                        
                    <div class="rsingle span_1_of_single">
                        <h5 class="m_1">Categories</h5>
                        <ul class="kids">
                            <%
                                for(Category c : categoryDAO.getCategory()){
                            %>
                            <li><a href="engbook.jsp?category=<%=c.getCategoryID() %>"><%=c.getCategoryName() %></a></li>
                            <%
                                }
                            %>
                        </ul>

                        <section class="sky-form">
                            <h4>Author Name</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <ul class="kids">
                                        <%
                                            for(Author author : authorDAO.getAuthor()){
                                        %>
                                        <li><a href="engbookbyauthor.jsp?author=<%=author.getAuthorID() %>"><%=author.getAuthorName() %></a></li>
                                        <%
                                            }
                                        %>
                                    </ul>
                                </div>
                            </div>
                        </section>
                        
                        <script src="js/jquery.easydropdown.js"></script>
                    </div> 
                        <div class="clear">
                        </div>
                </div>
                <div class="clear"></div>
            </div>
	
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
