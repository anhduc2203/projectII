<%-- 
    Document   : buy
    Created on : Nov 22, 2018, 11:14:23 AM
    Author     : unknown_HUST
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Buy</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
        <h1>Hello World!</h1>
    </body>
</html>
