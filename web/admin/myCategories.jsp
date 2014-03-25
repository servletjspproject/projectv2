<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@taglib prefix="category" uri="/WEB-INF/tlds/category" %>
<html>
    <head>
        <title>The Fooseshoes Website Template | Products :: w3layouts</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
                });
            });
        </script>
        <style type="text/css" title="currentStyle">
            @import "../media/css/demo_page.css";
            @import "../media/css/demo_table.css";
        </style>

        <script type="text/javascript" language="javascript" src="../media/js/jquery.dataTables.js"></script>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                $('#example').dataTable();
            });
        </script>


        <script type="text/javascript">
           function editCategory(id){
                 window.location.assign("CategoryprofileAdmin.jsp?id="+id);
                 
               
           }
           function deleteCategory(id){
               
               //http://www.ymic3dworld.com/lightwindow2/apprise/apprise.html
               if (yes){
                $.post("deleteCategory",{
                        id:id

                    }
                ,ConfirmDelete);
            }
               
               
           }


            function dechange(v)
            {
                $(v).attr("src", "../images/deactive.png");
            }
            function rechange(v)
            {
                $(v).attr("src", "../images/reload.gif");
            }
            function change(v)
            {
                $(v).attr("src", "../images/active.png");
            }
            function activeDeactiveUser(ev)
            {
                var src = $(ev).attr("src");
                var imgapth = src.split("/");
                var imgname = imgapth[1];
                var servletName;
                rechange(ev);
                if (imgname == "active.png")
                {
                    servletName = "../ActiveAccount";
                }
                else
                {
                    servletName = "../DeactiveAccount";
                }



                $.ajax({
                    url: "" + servletName + "", //give your URL here
                    data: {userID: "your name"}, //(optional) if you wish you can send this data to server, just like this.
                    success: function(data) {

                        
                        if (data.trim() == "1" )
                        {
                            setTimeout(function() {

                                dechange(ev);
                            }, 1000);

                        }
                        else
                        {
                            setTimeout(function() {

                               change(ev);
                            }, 1000);
                            
                        }

                    }
                });




            }

        </script>
        <style>
        .imgd:hover {
  border: solid 1px red;
  cursor: pointer;
}
        </style>

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
                        <li><a href="myProducts.jsp">Products</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="myCustomers.jsp">Customers</a></li>
                        <li><a href="addAdmin.jsp">Admins</a></li>
                        <li><a href="profileAdmin.jsp">Profile</a></li>
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
                        
                        <li><a href="../index.html">pages</a></li>
                        
                        
                        <li><a href="profile2.html">profile</a></li>
                        <div class="clear"></div>
                    </ul>
                </nav>
                <div class="header_right">

                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- start top_bg -->
        <div class="top_bg">
            <div class="wrap">
                <div class="main_top">
                    <h2 class="style">my categories</h2>
                </div>
            </div>
        </div>
        <!-- start main -->
        <div class="main_bg">
            <div class="wrap">
                <div class="main">
                    <div class="top_main">

                        <!--	<a href="#">show all</a> -->
                      
                        <table cellpadding=\"0\" cellspacing=\"0\" border=\"1\" class=\"display\" id=\"example\" width=\"100%\">\n" +
                            <thead>
                                <tr>
                                    <th class=\"nosort\">ID</h1></th>
                                    <th>Name</th>                               
                                    <th>Edit</th>
                                    <th>Delete</th>
                                   
                                </tr>
                            </thead>
                           <tbody>

                        <category:myCategory></category:myCategory>
                        
                        
                        </tbody>
                        </table>
                            
                  

                        <div class="clear"></div>
                    </div>
                    <!-- start grids_of_3 -->
                    <!--///////////////////////////////// -->


                    <div class="clear">

                        <!-- start footer -->
                        <div class="footer_mid">
                            <div class="wrap">
                                <div class="footer">
                                    <div class="f_search">
                                        <form>
                                            <input type="text" value="" placeholder="Enter email for newsletter" />
                                            <input type="submit" value=""/>
                                        </form>
                                    </div>
                                    <div class="soc_icons">
                                        <ul>
                                            <li><a class="icon1" href="#"></a></li>
                                            <li><a class="icon2" href="#"></a></li>
                                            <li><a class="icon3" href="#"></a></li>
                                            <li><a class="icon4" href="#"></a></li>
                                            <li><a class="icon5" href="#"></a></li>
                                        </ul>	
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
                                    <div class="copy">
                                        <p class="link"><span>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></span></p>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        </body>
                        </html>