<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cat" uri="/WEB-INF/tlds/category" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>The Fooseshoes Website Template | Products :: w3layouts</title>
        <meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!--- start-mmmenu-script---->
        <script src="../js/jquery.min.js" type="text/javascript"></script>
        <link type="text/css" rel="stylesheet" href="../css/jquery.mmenu.all.css" />
        <script type="text/javascript" src="../js/jquery.mmenu.js"></script>
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
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
                                    <li><a href="../login.jsp">Login</a> </li>
                                    <span class="log"> or </span>
                                    <li><a href="user/register.jsp">Register</a> </li>	


                                </c:when>
                                <c:when test="${user != null }">

                                    <li><a href="user/profile2.jsp">${user.fname}</a> </li>								   
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
                    <h2 class="style">our products</h2>
                </div>
            </div>
        </div>
        <!-- start main -->
        <div class="main_bg">
            <div class="wrap">
                <div class="main">
                    <h2 >Select category</h2>
                    <!--
                    <select >
                      <option value="volvo">Heals</option>
                      <option value="saab">Sandels</option>
                      <option value="opel">Boots</option>
                      <option value="audi">Slippers</option>
                      <option value="audi">Flat</option>
                      <option value="audi">New Comers</option>
                      
                    </select> -->

                   
                    <cat:DropCategory ></cat:DropCategory>
                    
                    <!-- jQuery if needed -->
                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
                    <script type="text/javascript">

            function DropDown(el) {
                this.dd = el;
                this.initEvents();
            }
            DropDown.prototype = {
                initEvents: function() {
                    var obj = this;

                    obj.dd.on('click', function(event) {
                        $(this).toggleClass('active');
                        event.stopPropagation();
                    });
                }
            }

            $(function() {

                var dd = new DropDown($('#dd'));

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
                    <cat:GetProductOfCat catID="${param.id}" ></cat:GetProductOfCat>
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