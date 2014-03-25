<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="tables.Users"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>The Fooseshoes Website Template | Contact :: w3layouts</title>
        <meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
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
                $(".scroll").click(function(event) {
                    event.preventDefault();
                    $('jsp,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
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
                        <a href="../index.jsp"><img src="../images/logo.png" alt=""/></a>
                    </div>
                    <div class="log_reg">
                        <ul>
                            
                            <c:choose>
                                <c:when test="${user == null}">
                                    <li><a href="login.jsp">Login</a> </li>
                                    <span class="log"> or </span>
                                    <li><a href="register.jsp">Register</a> </li>	


                                </c:when>
                                <c:when test="${user != null }">

                                    <li><a href="profile2.jsp">${user.fname}</a> </li>								   
                                    <li><a href="../LogOut">log out</a> </li>	

                                    <div class="clear"></div>
                                </c:when>
                            </c:choose>
                        </ul>
                    </div>	
                    <div class="web_search">
                        <form>
                            <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                    this.value = '';
                }">
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
                        <li class="active"><a href="../index.jsp">Home</a></li>
                        <li><a href="products.jsp">products</a></li>
                        <li><a href="about.jsp">about</a></li>
                        <li><a href="../index.jsp">pages</a></li>
  <c:choose>
                            <c:when test="${sessionScope.user != null}">
                                
                            <li><a href="profile2.jsp">profile</a></li>
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
                        <li><a href="../index.jsp">Home</a></li>
                        <li><a href="products.jsp">products</a></li>
                        <li><a href="about.jsp">about</a></li>
                        <li><a href="../index.jsp">pages</a></li>
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
                                <li><a href="my_products.jsp"><i  class="cart"></i><span><c:out value="${sessionScope.cart.getProductses().size()}"></c:out></span></a></li>
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
                                    <%
                                        if(session.getAttribute("user") != null)
                                    out.println("<img src=\"images/"+((Users)(session.getAttribute("user"))).getImage()+"\" alt=\"\"></br>");
                                    %>
                                    
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
                                    

                                    <!--value=${session.UsersBean.lname}-->
                                    <!--value=${sessionScope.UsersBean.lname}-->

                                    <!--             el code da haytshal lma farida t7ot codha this is just example                                 -->
                                  
                                    <!--***************************************************************************************************************-->						
                                    <div>
                                        <span><label>FNAME</label></span>
                                        <span>
                                            <input id="fn" name="userNameProfile" type="text" class="textbox" value="${user.fname}" readOnly="true">

                                            <input type="button" value="Edit" class="contact-form" onclick="document.getElementById('fn').readOnly = false;
                document.getElementById('fn').select()">
                                        </span>
                                    </div>
                                    <div>
                                        <span><label>LNAME</label></span>
                                        <span>
                                            <input id="ln" name="userNameProfile" type="text" class="textbox" readOnly="true" value=${user.lname}>
                                            <input type="button" value="Edit" onclick="document.getElementById('ln').readOnly = false;">
                                        </span>
                                    </div>
                                    <div>
                                        <span><label>E-MAIL</label></span>
                                        <span>
                                            <input id="em" name="userEmailProfile" type="text" class="textbox" readOnly="true" value=${user.email}>
                                            <input type="button" value="Edit" onclick="document.getElementById('em').readOnly = false;">
                                        </span>
                                    </div>
                                    <div>
                                        <span><label>MOBILE</label></span>
                                        <span>
                                            <input id="mo" name="userPhoneProfile" type="text" class="textbox" readOnly="true" value=${user.mobile}>
                                            <input type="button" value="Edit" onclick="document.getElementById('mo').readOnly = false;">
                                        </span>
                                    </div>
                                    <div>
                                        <span><label>Address</label></span>
                                        <span>
                                            <input id="add" name="addressProfile" type="text" class="textbox" readOnly="true" value=${user.address}>
                                            <input type="button" value="Edit" onclick="document.getElementById('add').readOnly = false;">
                                        </span>
                                    </div>
                                    <div>
                                        <span><label>JOB</label></span>
                                        <span>
                                            <input id="jo" name="jobProfile" type="text" class="textbox" readOnly="true" value=${user.job}>
                                            <input type="button" value="Edit" onclick="document.getElementById('jo').readOnly = false;">
                                        </span>
                                    </div>
                                    <div>
                                        <span><label>CreditBalance</label></span>
                                        <span>
                                            <input id="cr" name="CreditBalanceProfile" type="text" class="textbox" readOnly="true" value=${user.credit}>
                                            <input type="button" value="Edit" onclick="document.getElementById('cr').readOnly = false;">
                                        </span>
                                    </div>
                                    <div>
                                        <span><label>password</label></span>
                                        <span>
                                            <input id="pa" name="passwordProfile" type="password" class="textbox" readOnly="true" value=${user.password}>
                                            <input type="button" value="Edit" onclick="document.getElementById('pa').readOnly = false;">
                                        </span>
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


                $().UItoTop({easingType: 'easeOutQuart'});

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