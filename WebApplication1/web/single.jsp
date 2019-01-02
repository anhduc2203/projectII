<%-- 
    Document   : single
    Created on : Dec 19, 2018, 2:10:05 PM
    Author     : unknown_HUST
--%>

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
<!--                            <ul id="etalage">
                                <li>
                                    <a href="optionallink.html">
                                        <img class="etalage_thumb_image" src="" class="img-responsive" />
                                         <img class="etalage_source_image" src="images/s1.jpg" class="img-responsive" title="" />
                                    </a>
                                </li>
                            </ul>-->
                            <div class="clearfix"></div>
                        </div>
                        <div class="desc1 span_3_of_2">
                            <h3 class="m_3"><%=b.getBookName() %></h3>
                            <p class="m_text2">Author: <%=aut %> </p>
                            <p class="m_5">Price: $<%=b.getBookPrice() %> <a href="#">click for offer</a></p>
                            <div class="btn_form">
                                <form>
                                    <input type="submit" value="buy" title="">
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
<!--             //            <section class="sky-form">
                            <h4>Price</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>... - $50</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$50 - $100</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$100 - ...</label>
                                </div>
                                <input type="button" >
                            </div>
                        </section>-->
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
<!--                        <section class="sky-form">
                            <h4>Price</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Rs 500 - Rs 700</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 700 - Rs 1000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 1000 - Rs 1500</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 1500 - Rs 2000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 2000 - Rs 2500</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 2500 - Rs 3000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 3500 - Rs 4000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 4000 - Rs 4500</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 4500 - Rs 5000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 5000 - Rs 5500</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 5500 - Rs 6000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 6000 - Rs 6500</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 6500 - Rs 7000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 7000 - Rs 7500</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 7500 - Rs 8000</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rs 8000 - Rs 8500</label>
                                </div>
                            </div>
                        </section>-->
<!--                        <section class="sky-form">
                            <h4>Brand Name</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>John Jacobs</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Tag Heuer</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Lee Cooper</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Mikli</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>S Oliver</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Hackett</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Killer</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>IDEE</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vogue</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gunnar</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Accu Reader</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>CAT</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Excellent</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Feelgood</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Odysey</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Animal</label>
                                </div>
                            </div>
                        </section>-->
<!--                        <section class="sky-form">
                            <h4>Frame Shape</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Pilot</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rectangle</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Square</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Round</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Others</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Cat Eyes</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Wrap Around</label>
                                </div>
                            </div>
                        </section>-->
<!--                        <section class="sky-form">
                            <h4>Frame Size</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Small</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Medium</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Large</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Medium</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Large</label>
                                </div>
                            </div>
                        </section>-->
<!--                        <section class="sky-form">
                            <h4>Frame Type</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Full Rim</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rim Less</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Half Rim</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rim Less</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Half Rim</label>
                                </div>
                            </div>
                        </section>-->
<!--                        <section class="sky-form">
                            <h4>Colors</h4>
                            <ul class="color-list">
                                <li><a href="#"> <span class="color1"> </span>
                                        <p class="red">Red</p>
                                    </a></li>
                                <li><a href="#"> <span class="color2"> </span>
                                        <p class="red">Green</p>
                                    </a></li>
                                <li><a href="#"> <span class="color3"> </span>
                                        <p class="red">Blue</p>
                                    </a></li>
                                <li><a href="#"> <span class="color4"> </span>
                                        <p class="red">Yellow</p>
                                    </a></li>
                                <li><a href="#"> <span class="color5"> </span>
                                        <p class="red">Violet</p>
                                    </a></li>
                                <li><a href="#"> <span class="color6"> </span>
                                        <p class="red">Orange</p>
                                    </a></li>
                                <li><a href="#"> <span class="color7"> </span>
                                        <p class="red">Gray</p>
                                    </a></li>
                            </ul>
                        </section>-->
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
