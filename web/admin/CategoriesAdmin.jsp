<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>The Fooseshoes Website Template | Products :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--- start-mmmenu-script---->
<script src="js/jquery.min.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="css/jquery.mmenu.all.css" />
<script type="text/javascript" src="js/jquery.mmenu.js"></script>
  <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css' />
		<script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
		<noscript><link rel="stylesheet" type="text/css" href="css/noJS.css" /></noscript>
		<script type="text/javascript">
			//	The menu on the left
			$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>
<!-- start top_js_button -->
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
<!-- start header -->
<div class="top_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.html"><img src="images/logo.png" alt=""/></a>
		</div>
		<div class="log_reg">
				<ul>
					<li><a href="login.html">Log Out</a> </li>
				
					<div class="clear"></div>
				</ul>
		</div>	
		 <div class="log_reg">
				<ul>
					
					<span class="log"> User Name</span>
												   
					<div class="clear"></div>
				</ul>
		</div>
		<div class="web_search">
		 	<form>
				<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
				<input type="submit" value=" " />
			</form>
	    </div>						
		<div class="clear"></div>
	</div>	
</div>
</div>
<!-- start header_btm -->
<div class="wrap">
<div class="header_btm">
		<div class="menu">
				<ul>
				<li><a href="ProductsAdmin.html">Products</a></li>
				<li><a href="#">Categories</a></li>
				<li><a href="myCustomers.html">Customers</a></li>
				<li><a href="addAdmin.html">Admins</a></li>
				<li><a href="profileAdmin.html">Profile</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<div id="smart_nav">
			<a class="navicon" href="#menu-left"> </a>
		</div>
		
	<div class="header_right">
		<ul>
			
		</ul>
	</div>
	<div class="clear"></div>
</div>
</div>
<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">our categories</h2>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
<h1 >Select category</h1>
<!--
<select >
  <option value="volvo">Heals</option>
  <option value="saab">Sandels</option>
  <option value="opel">Boots</option>
  <option value="audi">Slippers</option>
  <option value="audi">Flat</option>
  <option value="audi">New Comers</option>
  
</select> -->

			<section class="main">
				<div class="wrapper-demo">
					<div id="dd" class="wrapper-dropdown-5" tabindex="1">Categories
						<ul class="dropdown">
							<li><a href="#"><i class="icon-user"></i>New</a></li>
							<li><a href="#"><i class="icon-cog"></i>Sandels</a></li>
							<li><a href="#"><i class="icon-cog"></i>Boots</a></li>
							<li><a href="#"><i class="icon-cog"></i>Slippers</a></li>
							<li><a href="#"><i class="icon-cog"></i>Flat</a></li>
							<li><a href="#"><i class="icon-cog"></i>Heals</a></li>
						
						</ul>
					</div>
				​</div>
			</section>
<!-- jQuery if needed -->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript">

			function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						$(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}

			$(function() {

				var dd = new DropDown( $('#dd') );

				$(document).click(function() {
					// all dropdowns
					$('.wrapper-dropdown-5').removeClass('active');
				});

			});

		</script>

	<div class="top_main">
		<h2>new arrivals on fooseshoes</h2>

	<div class="clear"></div>
	</div>
	<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic1.jpg" alt="">
				<h3>Heal</h3>
				<span class="price">ID: 99</span>
			</a>
		</div>
		<div class="read_more">
			<a class="btn" href="">Edit</a>
		</div>
		
         <div class="read_more">
			<a class="btn" href="">Remove</a>
		</div>
      
		
		
		<div class="clear"></div>
	</div>
	
		<div class="clear"></div>
	
	
		<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic2.jpg" alt="">
				<h3>Slippers</h3>
				<span class="price">ID: 29</span>
			</a>
		</div>
		<div class="read_more">
			<a class="btn" href="">Edit</a>
		</div>
		
         <div class="read_more">
			<a class="btn" href="">Remove</a>
		</div>
      
		
		
		<div class="clear"></div>
	</div>
	
		<div class="clear"></div>
		<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic3.jpg" alt="">
				<h3>Boots</h3>
				<span class="price">ID: 69</span>
			</a>
		</div>
		<div class="read_more">
			<a class="btn" href="">Edit</a>
		</div>
         <div class="read_more">
			<a class="btn" href="">Remove</a>
		</div>
      
		
		
		<div class="clear"></div>
	</div>
	
		<div class="clear"></div>
		<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic4.jpg" alt="">
				<h3>Flat</h3>
				<span class="price">ID: 98</span>
			</a>
		</div>
		
		<div class="read_more">
			<a class="btn" href="">Edit</a>
		</div>
		
         <div class="read_more">
			<a class="btn" href="">Remove</a>
		</div>
      
		
		
		<div class="clear"></div>
	</div>
	
		<div class="clear"></div>
		<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic5.jpg" alt="">
				<h3>Sandels</h3>
				<span class="price">ID: 89</span>
			</a>
		</div>
		
		<div class="read_more">
			<a class="btn" href="">Edit</a>
		</div>
         <div class="read_more">
			<a class="btn" href="">Remove</a>
		</div>
      
		
		
		<div class="clear"></div>
	</div>
	
		<div class="clear"></div>
		<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic6.jpg" alt="">
				<h3>New Arrivals</h3>
				<span class="price">ID: 199</span>
			</a>
		</div>
		
		<div class="read_more">
			<a class="btn" href="">Edit</a>
		</div>
		
         <div class="read_more">
			<a class="btn" href="">Remove</a>
		</div>
      
		
		
		<div class="clear"></div>
	</div>
	
		<div class="clear"></div>
		
		<div class="read_more">
			<a class="btn" href="">Add Category</a>
		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>

<!-- start footer -->
<div class="footer_mid">
<div class="wrap">
<div class="footer">
<!-- start footer -->
<div class="footer_bg">
<div class="wrap">
<div class="footer">
		<!-- scroll_top_btn -->
	    <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		<!--end scroll_top_btn -->
	<div class="f_nav1">
		<ul>
			<li><a href="#">home /</a></li>
			<li><a href="#">support /</a></li>
			<li><a href="#">Terms and conditions /</a></li>
			<li><a href="#">Faqs /</a></li>
			<li><a href="#">Contact us</a></li>
		</ul>
		</div>

	<div class="clear"></div>
</div>
</div>
</div>
</body>
</html>