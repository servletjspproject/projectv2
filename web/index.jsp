
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="cat" uri="/WEB-INF/tlds/category" %>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
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
        <!-- start slider -->
        <link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#ei-slider').eislideshow({
                    animation: 'center',
                    autoplay: true,
                    slideshow_interval: 3000,
                    titlesFactor: 0
                });
            });
        </script>
        <!-- start top_js_button -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event) {
                    event.preventDefault();
                    $('jsp,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
                });
            });
        </script>
    </head>
    <body >
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
                                    <li><a href="user/register.jsp">log out</a> </li>	

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
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="user/products.jsp">products</a></li>
                        <li><a href="user/about.jsp">about</a></li>
                        <li><a href="index.jsp">pages</a></li>
                            <c:choose>
                                <c:when test="${sessionScope.user != null}">

                                <li><a href="user/profile2.jsp">profile</a></li>
                                </c:when>
                            </c:choose>


                        <!--<li><a href="blog.jsp">blog</a></li>-->
                        <li><a href="user/contact.jsp">Contact</a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
                <div id="smart_nav">
                    <a class="navicon" href="#menu-left"> </a>
                </div>
                <nav id="menu-left">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="user/products.jsp">products</a></li>
                        <li><a href="user/about.jsp">about</a></li>
                        <li><a href="index.jsp">pages</a></li>
                        <li><a href="user/profile2.jsp">profile</a></li>
                        <!--<li><a href="blog.jsp">blog</a></li>-->
                        <li><a href="user/contact.jsp">Contact</a></li>
                        <div class="clear"></div>
                    </ul>
                </nav>

                <c:choose>
                    <c:when test="${user != null}">

                        <div class="header_right">
                            <ul>
                                <li><a href="user/my_products.jsp"><i  class="cart"></i><span>0</span></a></li>
                            </ul>
                        </div>

                    </c:when>

                </c:choose>
                    <div class="clear"></div>
                </div>

            </div>


            <!-- start slider -->
            <div class="slider">
                <!---start-image-slider---->
                <div class="image-slider">


                    <div style="width:20%;height:100%;float:left">
                        <ul class="det_nav">
                            
                                                        <cat:getCategory></cat:getCategory>
                        </ul>


                    </div>





                    <div class="wrapper">



                        <div id="ei-slider" class="ei-slider">
                            <ul class="ei-slider-large">
                                <li>

                                    <img src="images/slider-image1.jpg" alt="image06"/>
                                    <div class="ei-title">
                                        <h3 class="btn">$145.99</h3>
                                        <h2>pink shoes <br>	2013 collections</h2>
                                        <h3 class="active">It is a long established fact that a reader<br>
                                            Lorem Ipsum is that it has a more-or-less 
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/slider-image2.jpg" alt="image01" />
                                    <div class="ei-title">
                                        <h3 class="btn">$145.99</h3>
                                        <h2>pink shoes <br>	2013 collections</h2>
                                        <h3 class="active">It is a long established fact that a reader<br>
                                            Lorem Ipsum is that it has a more-or-less 
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/slider-image3.jpg" alt="image02" />
                                    <div class="ei-title">
                                        <h3 class="btn">$145.99</h3>
                                        <h2>pink shoes <br>	2013 collections</h2>
                                        <h3 class="active">It is a long established fact that a reader<br>
                                            Lorem Ipsum is that it has a more-or-less 
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/slider-image4.jpg" alt="image03"/>
                                    <div class="ei-title">
                                        <h3 class="btn">$145.99</h3>
                                        <h2>pink shoes <br>	2013 collections</h2>
                                        <h3 class="active">It is a long established fact that a reader<br>
                                            Lorem Ipsum is that it has a more-or-less 
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/slider-image1.jpg" alt="image04"/>
                                    <div class="ei-title">
                                        <h3 class="btn">$145.99</h3>
                                        <h2>pink shoes <br>	2013 collections</h2>
                                        <h3 class="active">It is a long established fact that a reader<br>
                                            Lorem Ipsum is that it has a more-or-less 
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/slider-image5.jpg" alt="image05"/>
                                    <div class="ei-title">
                                        <h3 class="btn">$145.99</h3>
                                        <h2>pink shoes <br>	2013 collections</h2>
                                        <h3 class="active">It is a long established fact that a reader<br>
                                            Lorem Ipsum is that it has a more-or-less 
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/slider-image3.jpg" alt="image07"/>
                                    <div class="ei-title">
                                        <h3 class="btn">$145.99</h3>
                                        <h2>pink shoes <br>	2013 collections</h2>
                                        <h3 class="active">It is a long established fact that a reader<br>
                                            Lorem Ipsum is that it has a more-or-less 
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="details.jsp"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
                            </ul><!-- ei-slider-large -->
                            <ul class="ei-slider-thumbs">
                                <li class="ei-slider-element">Current</li>
                                <li>
                                    <a href="#">
                                        <span class="active">pink shoes</span>
                                        <p>now of $145.99</p> 
                                    </a>
                                    <img src="images/thumbs/1.jpg" alt="thumb01" />
                                </li>
                                <li class="hide"><a href="#"><span>anns field</span><p>limited edition</p> </a><img src="images/thumbs/2.jpg" alt="thumb01" /></li>
                                <li  class="hide1"><a href="#"><span>prada</span><p>summer is coming</p></a><img src="images/thumbs/3.jpg" alt="thumb02" /></li>
                                <li class="hide1"><a href="#"><span>casa devi</span><p>all colors available</p> </a><img src="images/thumbs/4.jpg" alt="thumb03" /></li>
                                <li><a href="#"><span>mellow yellow</span><p>free delivery</p> </a><img src="images/thumbs/1.jpg" alt="thumb04" /></li>
                                <li><a href="#"><span>anns field</span><p>limited edition</p> </a><img src="images/thumbs/5.jpg" alt="thumb05" /></li>
                                <li><a href="#"><span>anns field</span><p>limited edition</p> </a><img src="images/thumbs/3.jpg" alt="thumb07" /></li>
                            </ul><!-- ei-slider-thumbs -->
                        </div><!-- ei-slider -->
                    </div><!-- wrapper -->
                </div>
                <!---End-image-slider---->	
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
