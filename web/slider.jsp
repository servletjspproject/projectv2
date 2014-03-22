

<%@page import="utility.LatestProduct"%>
<%@page import="tables.Products"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>







<div class="wrapper">


    
    
    

                        <div id="ei-slider" class="ei-slider">
                            <ul class="ei-slider-large">
                                
                                <c:forEach var="product" items="${requestScope.latestProduct.getProductses()}" >
    
      <li>

          <img src="<c:out value="${product.getImg()}"></c:out>" alt="image06"/>
                                    <div class="ei-title">
                                        <h3 class="btn">$<c:out value="${product.getPrice()}"></c:out></h3>
                                        <h2><c:out value="${product.getCategories().getName()}"></c:out> <br>	2013 collections</h2>
                                        <h3 class="active"> <c:out value="${product.getDescription()}"></c:out>
                                        </h3>
                                        <h3>
                                            <a class="ei_icons" href="ViewProductDetails?id=<c:out value="${product.getIdProducts()}"></c:out>"><img src="images/icon_1.png" alt=""></a>

                                            <a class="ei_icons" href="ViewProductDetails?id=<c:out value="${product.getIdProducts()}"></c:out>"><img src="images/icon_3.png" alt=""></a>
                                            <a class="ei_icons" href="ViewProductDetails?id=<c:out value="${product.getIdProducts()}"></c:out>"><img src="images/icon_4.png" alt=""></a>
                                        </h3>
                                    </div>
                                </li>
</c:forEach>
                                
                              
                            </ul><!-- ei-slider-large -->
                            <ul class="ei-slider-thumbs">
                                <li class="ei-slider-element">Current</li>
                                  <c:forEach var="product" items="${requestScope.latestProduct.getProductses()}" >
                                <li>
                                    <a href="#">
                                        <span class="active"><c:out value="${product.getName()}"></c:out></span>
                                        <p>now of $<c:out value="${product.getPrice()}"></c:out></p> 
                                    </a>
                                    <img src="<c:out value="${product.getImg()}"></c:out>" alt="thumb01" />
                                </li>
                            </c:forEach>
                            </ul><!-- ei-slider-thumbs -->
                        </div><!-- ei-slider -->
                    </div><!-- wrapper -->