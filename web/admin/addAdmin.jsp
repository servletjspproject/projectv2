<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>The Fooseshoes Website Template | Register :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />

 <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css' />
		<script type="text/javascript" src="../js/modernizr.custom.79639.js"></script> 
		<noscript><link rel="stylesheet" type="text/css" href="../css/noJS.css" /></noscript>
		
<!--- start-mmmenu-script---->
<script src="../js/jquery.min.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="../css/jquery.mmenu.all.css" />
<script type="text/javascript" src="../js/jquery.mmenu.js"></script>
		<script type="text/javascript">
			//	The menu on the left
			$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>
<!-- start top_js_button -->
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript" src="../js/move-top.js"></script>
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
			<a href="../index.html"><img src="../images/logo.png" alt=""/></a>
		</div>
	 <div class="log_reg">
				<ul>
					<li><a href="../login.html">Log Out</a> </li>
				
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
				<li><a href="#">Admins</a></li>
				<li><a href="profileAdmin.html">Profile</a></li>
				<div class="clear"></div>
			</ul>
		</div>
			
		<div id="smart_nav">
			<a class="navicon" href="#menu-left"> </a>
		</div>
	
	
	<div class="clear"></div>
</div>
</div>
<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h4 class="style">create an admin account</h4>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main"> 
	
	</div>
	<!-- end registration -->
	</div>
	<div class="login_left">
		<h3>register new admin</h3>
		<p>By creating an account for admin with our store, he will be able to move through the customers and products data, store new products and categories, view and track customers' orders in their accounts and more.</p>
		<div class="registration_left">
		<a href="#"><div class="reg_fb"><img src="../images/facebook.png" alt=""><i>register using Facebook</i><div class="clear"></div></div></a>
		 <div class="registration_form">
		 <!-- Form 
		 Sign up for the first time and enter his profile data (name, birthday, password, job, e-mail, credit balance, address, interests, …  )
		 -->	
		

		 
			<form id="registration_form" action="Register" method="post">

			
			
			
<input type="file" name="uploadField"/>
<input type="button" value="send"/>






				<div>
					<label>
                            <input name="fname" placeholder="first name:" type="text" tabindex="1" required="" autofocus="">
					</label>
				</div>
				<div>
					<label>
                            <input name="lname" placeholder="last name:" type="text" tabindex="2" required="" autofocus="">
					</label>
				</div>
				<div class="sky_form">
						<ul>
                            <li><label class="radio left"><input type="radio" name="radio" value="Male" checked=""><i>Male</i></label></li>
							<li><label class="radio"><input type="radio" value="Female" name="radio"><i>Female</i></label></li>
						</ul>
				</div>
				
				<div>
				<label>
				  Birthday: <input type="date" name="birthday">
				</label>
				</div>

				<div>
					<label>
                            <input name="mail" placeholder="email address:" type="email" tabindex="3" required="">
					</label>
				</div>
				
				<div>
					<label>
                        <input name="job" placeholder="your job:" type="text" tabindex="1" required="" autofocus="">
					</label>
				</div>
				
				<div>
					<label>
                    <input name="creditBalance" placeholder="your credit balance:" type="text" tabindex="1" required="" autofocus="">
					</label>
				</div>
				
				<div>
					<label>
                        <input name="address" placeholder="your address:" type="text" tabindex="1" required="" autofocus="">
					</label>
				</div>
									
				<div>
					<label>
						<input name="pass1" placeholder="password" type="password" tabindex="4" required="">
					</label>
				</div>						
				<div>
					<label>
						<input name="pass1" placeholder="retype password" type="password" tabindex="4" required="">
					</label>
				</div>
			

				<div>
					<input type="submit" value="create an account" id="register-submit">
				</div>
				
				
			</form>
			<!-- /Form -->
		</div>
	</div>
	</div>
	<div class="clear"></div>
</div>
</div>
</div>

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