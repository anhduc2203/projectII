<%-- 
    Document   : contact
    Created on : Nov 22, 2018, 11:17:07 AM
    Author     : unknown_HUST
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bookshop | Contact ::</title>
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
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="login">
            <div class="wrap">
                <ul class="breadcrumb breadcrumb__t"><a class="home" href="index.jsp">Home</a> / Contact</ul>
                <div class="content-top">
                    <form method="post" action="contact-post.html">
                        <div class="to">
                            <input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
                            <input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"
                                   style="margin-left: 10px">
                        </div>
                        <div class="to">
                            <input type="text" class="text" value="Phone Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Website';}">
                            <input type="text" class="text" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Subject';
                                    }"
                                   style="margin-left: 10px">
                        </div>
                        <div class="text">
                            <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Message';}">Message:</textarea>
                        </div>
                        <div class="submit">
                            <input type="submit" value="Submit">
                        </div>
                    </form>
                    <div class="map">
                        <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a
                                href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265"
                                style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
                    </div>
                </div>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
