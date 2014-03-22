<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>The Fooseshoes Website Template | Details :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link       href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<!-- start details -->
<link rel="stylesheet" type="text/css" href="css/productviewgallery.css" media="all" />
<script type="text/javascript" src="js/cloud-zoom.1.0.3.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="js/productviewgallery.js"></script>
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
       
       
       
       
       function  addTolist()
       {
          
  $.ajax({url:"AddElementShoppingCart",success:function(result){
    
    if(result.trim() == "Done")
        {
            
            var pastNum = $("#itemnum").html();
            var num = parseInt(pastNum);
            $("#itemnum").html(num+1);
            
        }
    
    
    
  }});

       }
       
       
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('jsp,body').animate({scrollTop:$(this.hash).offset().top},1200);
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
			<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
		</div>
		 <div class="log_reg">
				<ul>
					
                            <c:choose>
                                <c:when test="${user == null}">
                                    <li><a href="login.jsp">Login</a> </li>
                                    <span class="log"> or </span>
                                    <li><a href="user/register.jsp">Register</a> </li>	


                                </c:when>
                                <c:when test="${user != null }">

                                    <li><a href="user/profile2.jsp">${user.fname}</a> </li>								   
                                    <li><a href="LogOut">log out</a> </li>	

                                    <div class="clear"></div>
                                </c:when>
                            </c:choose>
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
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="products.jsp">products</a></li>
				<li><a href="about.jsp">about</a></li>
				<li><a href="index.jsp">pages</a></li>
				  <c:choose>
                            <c:when test="${sessionScope.user != null}">
                                
                            <li><a href="user/profile2.jsp">profile</a></li>
                            </c:when>
                        </c:choose>
				<!--<li><a href="blog.jsp">blog</a></li>-->
				<li><a href="contact.jsp">Contact</a></li>
				<div class="clear"></div>
			</ul>
		</div>
		<div id="smart_nav">
			<a class="navicon" href="#menu-left"> </a>
		</div>
		<nav id="menu-left">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="products.jsp">products</a></li>
				<li><a href="about.jsp">about</a></li>
				<li><a href="index.jsp">pages</a></li>
				<li><a href="profile2.jsp">profile</a></li>
				<!--<li><a href="blog.jsp">blog</a></li>-->
				<li><a href="contact.jsp">Contact</a></li>
				<div class="clear"></div>
			</ul>
		</nav>
	<c:choose>
                    <c:when test="${user != null}">

                        <div class="header_right">
                            <ul>
                                <li><a href="user/my_products.jsp"><i  class="cart"></i><span id="itemnum"><c:out value="${sessionScope.cart.getProductses().size()}"></c:out></span></a></li>
                            </ul>
                        </div>

                    </c:when>

                </c:choose>
	<div class="clear"></div>
</div>
</div>
<!-- start top_bg -->
<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">our fooseshoes</h2>
</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">
	<!-- start content -->
	<div class="single">
			<!-- start span1_of_1 -->
			<div class="left_content">
			<div class="span1_of_1">
				<!-- start product_slider -->
				
			<!-- end product_slider -->
			</div>
			<!-- start span1_of_1 -->
			<div class="span1_of_1_des">
				  <div class="desc1">
                                      <h3><c:out value="${sessionScope.product.getName()}"></c:out></h3>
                                      <h5>price is : <c:out value="${sessionScope.product.getPrice()}"></c:out></h5>
					<div class="available">
						<div class="btn_form">
                                                    <form >
                                                        <input type="button" value="Add now" title="" onclick="addTolist()" />
							</form>
						</div>
						<p><c:out value="${sessionScope.product.getDescription()}"></c:out></p>
					</div>
					
			   	 </div>
			   	</div>
			   	<div class="clear"></div>
			   	<!-- start left content_bottom -->
			   	
			   	<!-- end left content_bottom -->
		   	</div>
		
          	    <div class="clear"></div>
	       </div>	
	<!-- end content -->
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