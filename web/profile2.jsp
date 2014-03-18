<%@page import="tables.Users"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>The Fooseshoes Website Template | Contact :: w3layouts</title>
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
					<li><a href="login.html">Login</a> </li>
					<span class="log"> or </span>
					<li><a href="register.html">Register</a> </li>								                       
                    <li><a href="profile2.html">user name</a> </li>								   
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
				<li class="active"><a href="index.html">Home</a></li>
				<li><a href="products.html">products</a></li>
				<li><a href="about.html">about</a></li>
				<li><a href="index.html">pages</a></li>
				<li><a href="profile2.html">profile</a></li>
				<!--<li><a href="blog.html">blog</a></li>-->
				<li><a href="contact.html">Contact</a></li>
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
			<li><a href="#"><i  class="cart"></i><span>0</span></a></li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
</div>
<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">Profile</h2>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
	<div class="contact">				
				<div class="contact_left">
					<div class="contact_info">
			    	 	<h3></h3>
			    	 		<div class="map">
								<img src="images/profile.png" alt=""></br>
					   		</div>
      				</div>
      			<div class="company_address">
				   </div>
				</div>				
				<div class="contact_right">
				  <div class="contact-form">
				  	<h3>Profile Information</h3>
					    <form method="post" action="">
						
						
						
						
	<!--**********************************************Bean Code*********************************************************-->	
		<jsp:useBean id="UsersBean" scope="session" class="tables.Users"/>
		
		<!--value=${session.UsersBean.lname}-->
		<!--value=${sessionScope.UsersBean.lname}-->
             
		<!--             el code da haytshal lma farida t7ot codha this is just example                                 -->
		<%
		UsersBean.setAddress("my add");
		UsersBean.setEmail("my mail");
		UsersBean.setFname("tasneem");
		UsersBean.setLname("ibraheem");
													
		//HttpSession session = request.getSession(true); 
		//session.setAttribute("sessionBean", UsersBean); 
		
		%>

	<!--***************************************************************************************************************-->						
					    	<div>
						    	<span><label>FNAME</label></span>
						    	<span>
                                <input id="fn" name="userNameProfile" type="text" class="textbox" value=<jsp:getProperty name="UsersBean" property="fname" /> readOnly="true">
								
								<input type="button" value="Edit" class="contact-form" onclick="document.getElementById('fn').readOnly=false;document.getElementById('fn').select()">
								</span>
						    </div>
							<div>
						    	<span><label>LNAME</label></span>
						    	<span>
	<input id="ln" name="userNameProfile" type="text" class="textbox" readOnly="true" value=<jsp:getProperty name="UsersBean" property="lname" />>
									<input type="button" value="Edit" onclick="document.getElementById('ln').readOnly=false;">
								</span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span>
	<input id="em" name="userEmailProfile" type="text" class="textbox" readOnly="true" value=<jsp:getProperty name="UsersBean" property="email" />>
									<input type="button" value="Edit" onclick="document.getElementById('em').readOnly=false;">
								</span>
						    </div>
						    <div>
						     	<span><label>MOBILE</label></span>
						    	<span>
									<input id="mo" name="userPhoneProfile" type="text" class="textbox" readOnly="true">
									<input type="button" value="Edit" onclick="document.getElementById('mo').readOnly=false;">
								</span>
						    </div>
						    <div>
						     	<span><label>Address</label></span>
						    	<span>
									<input id="add" name="addressProfile" type="text" class="textbox" readOnly="true" value=<jsp:getProperty name="UsersBean" property="address"/>>
									<input type="button" value="Edit" onclick="document.getElementById('add').readOnly=false;">
								</span>
						    </div>
							<div>
						    	<span><label>JOB</label></span>
						    	<span>
									<input id="jo" name="jobProfile" type="text" class="textbox" readOnly="true" value=<jsp:getProperty name="UsersBean" property="job"/>>
									<input type="button" value="Edit" onclick="document.getElementById('jo').readOnly=false;">
								</span>
						    </div>
							<div>
						    	<span><label>CreditBalance</label></span>
						    	<span>
									<input id="cr" name="CreditBalanceProfile" type="text" class="textbox" readOnly="true" value=<jsp:getProperty name="UsersBean" property="credit"/>>
									<input type="button" value="Edit" onclick="document.getElementById('cr').readOnly=false;">
								</span>
						    </div>
							<div>
						    	<span><label>password</label></span>
								<span>
									<input id="pa" name="passwordProfile" type="text" class="textbox" readOnly="true" value=<jsp:getProperty name="UsersBean" property="password"/>>
									<input type="button" value="Edit" onclick="document.getElementById('pa').readOnly=false;">
								</span>
						    </div>							
				<div>
					<label>

					<input type="checkbox" name="interests" value="Heals">Heals<br>
						<input type="checkbox" name="interests" value="Sandels">Sandels<br>
						<input type="checkbox" name="interests" value="Boots">Boots<br>
						<input type="checkbox" name="interests" value="Slippers">Slippers<br>
						<input type="checkbox" name="interests" value="Flat">Flat<br>
						<input type="checkbox" name="interests" value="New Comers">New Comers<br>
						
					</label>

					</div>
						   <div>
						   		<span>
									<input type="submit" value="Save">
									<input type="button" value="Cansel">
								</span>
						  </div>
					    </form>
				    </div>
  				</div>		
  				<div class="clear"></div>		
		  </div>
</div>
</div>
</div>
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