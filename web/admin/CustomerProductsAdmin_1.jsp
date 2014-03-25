
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
				<li><a href="CategoriesAdmin.html">Categories</a></li>
				<li><a href="myCustomers.html">Customers</a></li>
				<li><a href="addAdmin.html">Admins</a></li>
				<li><a href="profileAdmin.html">Profile</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		
		<div id="smart_nav">
			<a class="navicon" href="#menu-left"> </a>
		</div>
		<nav id="menu-left">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="products.html">products</a></li>
				<li><a href="about.html">about</a></li>
				<li><a href="index.html">pages</a></li>
				<li><a href="profile2.html">profile</a></li>
				<!--<li><a href="blog.html">blog</a></li>-->
				<li><a href="contact.html">Contact</a></li>
				<div class="clear"></div>
			</ul>
		</nav>
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
	<h2 class="style">User's products</h2>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
	<div class="top_main">
		
	<!--	<a href="#">show all</a> -->
		

	<div class="clear"></div>
	</div>
	<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic1.jpg" alt="">
				<h3>even &amp; odd</h3>
				<span class="price">$145,99</span>
			</a>
		</div>
		<div class="read_more">
			<a class="btn" href="">It was purchased 3 days ago</a>
		</div>
		
		<div class="clear"></div>
	</div>
	
	<div class="clear"></div>
	<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic1.jpg" alt="">
				<h3>even &amp; odd</h3>
				<span class="price">$145,99</span>
			</a>
		</div>
			<div class="read_more">
				<a class="btn" href="">It was purchased 4 days ago</a>
			</div>
		<div class="clear"></div>
	</div>

	<div class="clear"></div>
	<!-- start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<a href="details.html">
				<img src="images/pic4.jpg" alt="">
				<h3>buffalo decollete</h3>
				<span class="price">$145,99</span>
			</a>
		</div>
		<div class="read_more">
			<a class="btn" href="">It was purchased 4 days ago</a>
		</div>
		<div class="clear"></div>
		
		
	</div>
	<div class="clear"></div>

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

	</div>
	<div class="clear"></div>
</div>
</div>
</div>
</body>
</html>