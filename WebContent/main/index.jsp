<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	int pageNum=0;

	String stringPage=request.getParameter("page");
	if(stringPage.startsWith("join")){
		pageNum=1;
	} else if(stringPage.startsWith("board")){
		pageNum=2;
	}
	
	request.setAttribute("pageNum", pageNum);	
%>
    
<!-- 아래에 원 템플릿의 index.html 소스 내용 복사해서 붙여넣음. -->    
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Realist an Real_Estate Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Realist Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
	@media screen and (min-width: 800px){
		li.dropdown:hover > ul.dropdown-menu{
			display: block;
			margin: 0;
		}
	}	
</style>


<script src="js/jquery-1.11.1.min.js"></script>


<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/login.css" rel='stylesheet' type='text/css' />



<link href='http://fonts.googleapis.com/css?family=Grand+Hotel:400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>


<!-- Menu -->
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>
 <!----font-Awesome----->
<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>


<script type="text/javascript">
	 $(document).ready(function () {
		 
		 
	     $('#horizontalTab').easyResponsiveTabs({
	         type: 'default', //Types: default, vertical, accordion           
	         width: 'auto', //auto or any width like 600px
	         fit: true   // 100% fit in a container
	     });
	     
	     
	 });
</script>	
</head>


<body>
<div class="header">
	<div class="col-xs-4">
	  <div class="logo">
		<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
	  </div>
	</div>
	<div class="col-xs-8 header_right">
	  <span class="menu"></span>
	  	<div style="clear:both;"></div>
			<div class="top-menu">
				<ul>
					<li><a class="active scroll" href="index.html"><i class="fa fa-home"> </i>Home</a></li>
					<li class="dropdown">
						<c:if test="${empty sessionScope.id }">
							<a data-toggle="dropdown">
								<i class="fa fa-star"> </i> 
							로그인</a>
						</c:if>
						
					
					</li>
					<li><a href="services.html"><i class="fa fa-thumbs-up"> </i>Services</a></li>
					<li><a href="gallery.html"><i class="fa fa-picture-o"> </i>Gallery</a></li>
					<li><a href="contact.html"><i class="fa fa-envelope-o"> </i>Contact</a></li>
					<div class="clearfix"></div>
				</ul>
			 </div>
			<!-- script for menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<!-- script for menu -->
	</div>
	<div class="clearfix"> </div>
</div>
<div class="slider">
	  <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="images/banner.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
	          	<div class="container">
				  <h1>Est notare quam littera gothica, quam nunc.</h1>
				  <h2>At wisi enim ad minim veniam, quis nostrud.</h2>
				</div>
				<div class="details">
			     <div class="container">
	    	     <div class="col-xs-10 dropdown-buttons">   
            	  <div class="col-xs-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Locations</option>
							<option value="null">Business</option>         
							<option value="AX">First Class</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					</div>
				    <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Property types</option>
							<option value="null">House</option>         
							<option value="AX">Apartment</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All contracts</option>
							<option value="null">Sale</option>         
							<option value="AX">Rent</option>
							<option value="AX">Sold</option>
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-xs-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Search">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
			   </div>
			  </div>
			</li>
	        <li><img src="images/banner1.jpg" class="img-responsive" alt=""/>
	         <div class="banner_desc">
	            <div class="container">
				  <h1>Est notare quam littera gothica, quam nunc.</h1>
				  <h2>At wisi enim ad minim veniam, quis nostrud.</h2>
			    </div>
				<div class="details">
			     <div class="container">
	    	     <div class="col-xs-10 dropdown-buttons">   
            	  <div class="col-xs-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Locations</option>
							<option value="null">Business</option>         
							<option value="AX">First Class</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					</div>
				    <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Property types</option>
							<option value="null">House</option>         
							<option value="AX">Apartment</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All contracts</option>
							<option value="null">Sale</option>         
							<option value="AX">Rent</option>
							<option value="AX">Sold</option>
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-xs-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Search">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
			   </div>
			   </div>
	        </li>
	        <li><img src="images/banner2.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
	          	<div class="container">
				  <h1>Est notare quam littera gothica, quam nunc.</h1>
				  <h2>At wisi enim ad minim veniam, quis nostrud.</h2>
			    </div>
				<div class="details">
			     <div class="container">
	    	     <div class="col-xs-10 dropdown-buttons">   
            	  <div class="col-xs-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Locations</option>
							<option value="null">Business</option>         
							<option value="AX">First Class</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					</div>
				    <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Property types</option>
							<option value="null">House</option>         
							<option value="AX">Apartment</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All contracts</option>
							<option value="null">Sale</option>         
							<option value="AX">Rent</option>
							<option value="AX">Sold</option>
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-xs-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Search">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
				</div>
			    </div>
			 </li>
	      </ul>
	 </div>
</div>
<div class="smart_details">
			     <div class="container">
	    	     <div class="col-md-10 dropdown-buttons">   
            	  <div class="col-md-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Locations</option>
							<option value="null">Business</option>         
							<option value="AX">First Class</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					</div>
				    <div class="col-md-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Property types</option>
							<option value="null">House</option>         
							<option value="AX">Apartment</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-md-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All contracts</option>
							<option value="null">Sale</option>         
							<option value="AX">Rent</option>
							<option value="AX">Sold</option>
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-md-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Search">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
</div>
<div class="content_top">
   <div class="container">
   	  <h4 class="m_3">Most Popular</h4>
   	  <div class="grid_1">
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic8.jpg" class="img-responsive" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">House1</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-bed"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic9.jpg" class="img-responsive" alt=""/></a>
		     <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">House2</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"> </i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic10.jpg" class="img-responsive" alt=""/></a>
		     <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">House3</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"> </i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="single.html"><img src="images/pic11.jpg" class="img-responsive" alt=""/></a>
		     <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Hot Offer</span></div><div class="forclosure"><span class="m_12">Special Offer</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">House4</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"> </i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="clearfix"> </div>
	</div>
	   <div class="content_bottom">
		<div class="col-md-2">
			<div class="widget">
                <div class="title"><h3><i class="fa fa-meh-o men"> </i> For Sale</h3></div>
                  <ul class="real-widget"><li><a href="#">commercial(3)</a></li>
                	<li><a href="#">Housing(16)</a><ul>
                		<li><a href="#">Apartment</a></li>
                		<li><a href="#">Summerhouse</a></li>
                		<li><a href="#">Villa</a></li></ul>
                  </ul></li>
                </ul>
             </div>
             <div class="widget">
                <div class="title"><h3><i class="fa fa-meh-o men"> </i> For Rent</h3></div>
                  <ul class="real-widget"><li><a href="#">commercial(3)</a></li>
                	<li><a href="#">Housing(16)</a><ul>
                		<li><a href="#">Apartment</a></li>
                		<li><a href="#">Summerhouse</a></li>
                		<li><a href="#">Villa</a></li></ul>
                  </ul></li>
                </ul>
             </div>
		</div>
		<div class="col-md-7">	
		   <div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						 <div class="tab_grid">
							  <ul class="resp-tabs-list">
							  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Apartment</span></li>
								  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Resort</span></li>
								  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Summer house</span></li>
								  <div class="clearfix"></div>
							  </ul>	
							</div>	
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							    	<ul class="tab_img tab_1">
									  <li>
										<div class="client_box1">
					       				    <img src="images/pic1.jpg" class="img-responsive" alt=""/>
					       				    <div class="box_type">$&nbsp;650</div>
					       				    <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic2.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;450</div>
					       				    <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				   </div>
										</li>
										<li class="last">
										  <div class="client_box1">
					       				    <img src="images/pic3.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;220</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<div class="clearfix"></div>
										</ul>
										<ul class="tab_img">
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;650</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;450</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;500</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									
									<ul class="tab_img">
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;650</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;450</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;500</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							     	<ul class="tab_img">
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;450</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic6.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;500</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
				  </div>
           </div>
        </div>
        <div class="col-md-3">
			<div class="blog_list2">
				 <h3>Our Agents</h3>
					 <ul class="blog-list3 list_1">
					 	<li class="blog-list3-img"><img src="images/pic12.jpg" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Adipisicing</a></h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">20-1257-2587</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2"><a href="malito:mail@demolink.org">mail(at)realist.com</a></p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3 list_1">
					 	<li class="blog-list3-img"><img src="images/pic13.jpg" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Incididunt</a></h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">20-1257-2587</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2"><a href="malito:mail@demolink.org">mail(at)realist.com</a></p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
					 	<li class="blog-list3-img"><img src="images/pic7.jpg" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Hampden-Sydney</a></h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">20-1257-2587</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2"><a href="malito:mail@demolink.org">mail(at)realist.com</a></p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
			    </div>
		</div>
        <div class="clearfix"> </div>
        </div>
        <div class="grid_4">
                <div class="col-md-7 grid_6">
                    <h3>
                        Want to sell <br>
                        your real estate?
                    </h3>
                </div>
                <div class="col-md-5 grid_5">
                    <div class="banner2">
                        <a class="btn2" href="#">click here</a>
                        <h3>
                            FOR A FREE <br>
                            APPRAISAL
                        </h3>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
        </div>
        <div class="grid_7">
        	<div class="col-md-4 box_4">
        		<h4>Receive our Newsletter</h4>
        		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq.</p>
        	    <div class="search">
						  <form>
							   <input type="text" value="">
							   <input type="submit" value="Subscribe">
						  </form>
					    </div>
        	</div>
        	<div class="col-md-4">
        		<address class="footer-addr">
                        totam rem aperiam, <br>
                        voluptatum deleniti , USA <br>
                        E-MAIL:
                        <a href="#">MAIL@DEMOLINK.ORG</a>

                        <div class="phone">
                            <span>(500)</span> 1254 6487
                        </div>
                    </address>
        	</div>
        	<div class="col-md-2">
        		<ul class="list_2">
                        <li>
                            <a href="#">1st &amp; 2nd Mortgages</a>
                        </li>
                        <li>
                            <a href="#">Construction Loans</a>
                        </li>
                        <li>
                            <a href="#">Fractional Ownerships</a>
                        </li>
                        <li>
                            <a href="#">Home Refinancing</a>
                        </li>
                        <li>
                            <a href="#">Home Equity Lines</a>
                        </li>
                </ul>
        	</div>
        	<div class="col-md-2">
        		<ul class="list_2">
                        <li>
                            <a href="#">1st &amp; 2nd Mortgages</a>
                        </li>
                        <li>
                            <a href="#">Construction Loans</a>
                        </li>
                        <li>
                            <a href="#">Fractional Ownerships</a>
                        </li>
                        <li>
                            <a href="#">Home Refinancing</a>
                        </li>
                        <li>
                            <a href="#">Home Equity Lines</a>
                        </li>
                </ul>
        	</div>
        	<div class="clearfix"> </div>
        </div>
        
        <c:if test="${empty jsp} }">
        	<jsp:include page='<%= "../" +stringPage %>'></jsp:include>
        </c:if>
        
        <c:if test="${not empty jsp }">
        	<jsp:include page="${jsp }"></jsp:include>
        </c:if>
        
        <div class="copy">
			<p>© 2015 All Rights Reseverd Template by <a href="https://developer.apple.com/">Promise Concert</a> </p>
	    </div>
	</div>
</div>
</body>
</html>







		
