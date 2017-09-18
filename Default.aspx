﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Pack My Bags Travel Agency</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Travel Go Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<link rel="shortcut icon" href="images/js-logo.ico"/>
<!-- css files -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link href="css/component.css" rel="stylesheet" type="text/css"  /> <!-- For-Nav-CSS -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> <!-- For-News-CSS -->
<link href="css/main.css" rel="stylesheet"/> <!-- For-Portfolio-CSS -->
<!-- //css files -->

<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Oleo+Script:400,700&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //online-fonts -->

</head>
  <!--start-home-->
<body class="cbp-spmenu-push" id="home">
       <!-- Banner -->
        <div id="house" class="top-header">
				<div class="col-md-6 logo-w3l w32">
					
					<h1 class="location"><span class="icon-w3"></span><a href="Default.aspx">Pack My Bags</a></h1>
				</div>
				<div class="col-md-6 logo-w3l w31 sea">
					<div class="right-w3l">
						<ul class="top-links">
							<li><a href="https://www.facebook.com/ItsJay714"><i class="fa fa-facebook"></i></a></li>
							<li><a href="https://twitter.com/Jay_sondh"><i class="fa fa-twitter"></i></a></li>
							<li><a href="https://www.linkedin.com/in/jaskaran-singh-sondh-a88699123/"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="https://plus.google.com/u/0/115139785396744134056"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
					<div class="search">
						<form action="#" method="post">
							<input type="search" placeholder="Search here..." name="Search" required="">
							<input type="submit" value="">
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
		</div>
		<!--bottom-->
		<div class="button">
			<button id="showLeftPush"><img src="images/menu-icon.png" alt=""></button>
		</div>
		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
			<h3>Menu</h3>
				<a href="#home" class="scroll">Home</a>
						<a href="#services" class="scroll">Services</a>
						<a href="#news" class="scroll">News</a>
						<a href="#gallery" class="scroll">Gallery</a>
					    <a href="#team" class="scroll">Team</a>
						<a href="#contact" class="scroll">Contact Us</a>

		</nav>
	      <!--start-slider-->
		<div class="banner">
		     <div class="col-md-6 banner-slider">
			     <div id="top" class="callbacks_container">
					<ul class="rslides" id="slider4">
						<li>
						    <div class="banner-info">
							  <h3>Adventure is worthwhile.</h3>
							   <p>A journey is best measured in friends, rather than miles.</p>
							</div>
					     </li>
						  <li>
						     <div class="banner-info">
							    <h3>To Travel is to Live</h3>
							     <p>Travel and change of place impart new vigor to the mind.</p>
							 </div>
						 </li>
						 <li>
							<div class="banner-info">
							    <h3>Enjoy Your Journey.</h3>
							     <p>Take only memories, leave only footprints.</p>
							</div>						
						 </li>
					</ul>
				</div>
			</div>
			<div class="col-md-6 banner-grids">
				<div class="col-md-6 banner-grid">
				   <figure class="effect-bubba">
						<img src="images/london.jpg" alt=""/>
						<figcaption>
							<h4>London</h4>
						</figcaption>			
					</figure>	
				</div>
				<div class="col-md-6 banner-grid">
				   <figure class="effect-bubba">
						<img src="images/mauritius.jpg" alt=""/>
						<figcaption>
							<h4>Mauritius</h4>
						</figcaption>			
					</figure>	
				</div>
				<div class="col-md-6 banner-grid">
				   <figure class="effect-bubba">
						<img src="images/barcelona.jpg" alt=""/>
						<figcaption>
							<h4>Barcelona</h4>
						</figcaption>			
					</figure>	
				</div>
				<div class="col-md-6 banner-grid lost">
				   <figure class="effect-bubba">
						<img src="images/india.jpg" alt=""/>
						<figcaption>
							<h4>India</h4>
						</figcaption>			
					</figure>	
				</div>				
					<div class="clearfix"></div>							
			</div>
				<div class="clearfix"></div>
						
		</div>
		<!--//end-slider-->
		
	<!-- //Banner -->

<!-- services -->
<section class="services" id="services">
	<h2 class="agile-se">Our Services</h2>
	<label class="agile-se"></label>
	<div class="w3l-serv">
		<div class="container">
			<div class="col-md-4 col-sm-4 col-xs-4 serv-agile s1">
				<div class="w3-agile">
                    <%if(Session["username"]!= null){ %>
					    <a href="Main.aspx" target="_blank" class="hvr-rectangle-out"><i class="fa fa-plane" aria-hidden="true"></i></a>
                    <%}else{ %>
                        <a href="Login.aspx" target="_blank" class="hvr-rectangle-out"><i class="fa fa-plane" aria-hidden="true"></i></a>
                    <%} %>
				</div>
				<h4 class="text-center">Travel Arrangements</h4>
				<p class="services-w3ls">We provide first class travel packages that makes you vacations memorable and enriched with comfort. </p>	
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 serv-agile s2">
				<div class="w3-agile">
					<a href="#" class="hvr-rectangle-out"><i class="fa fa-suitcase" aria-hidden="true"></i></a>
				</div>
				<h4 class="text-center">Special Activities</h4>
				<p class="services-w3ls">We organize a ton of special activities throughout the year so that you can take a break no matter the season. </p>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 serv-agile s3">
				<div class="w3-agile">
					<a href="#" class="hvr-rectangle-out"><i class="fa fa-globe" aria-hidden="true"></i></a>
				</div>
				<h4 class="text-center">Beautiful Places</h4>
				<p class="services-w3ls">Explore the wonderful corners around the world, places you've never been to and experiences you've never had before.</p>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 serv-agile s4">
				<div class="w3-agile">
					<a href="#" class="hvr-rectangle-out"><i class="fa fa-calendar" aria-hidden="true"></i></a>
				</div>
				<h4 class="text-center">Fast Booking</h4>
				<p class="services-w3ls">We provide the quickest, reliable and affordable reservation service to your urgent needs. </p>	
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 serv-agile s5">
				<div class="w3-agile">
					<a href="#" class="hvr-rectangle-out"><i class="fa fa-users" aria-hidden="true"></i></a>
				</div>
				<h4 class="text-center">Support Team</h4>
				<p class="services-w3ls">We have an excellence personnel to help you out from packing to unpacking and yes it is included in the price. </p>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-4 serv-agile s6">
				<div class="w3-agile ">
					<a href="#" class="hvr-rectangle-out"><i class="fa fa-cutlery" aria-hidden="true"></i></a>
				</div>
				<h4 class="text-center">Hotels</h4>
				<p class="services-w3ls">We have a variety of places to choose from only to maximize comfort and relaxation. Everything 5-star and affordable. </p>
			</div>	
			<div class="clearfix"></div>			
		</div>
	</div>		
</section>
<!-- //services -->

<!-- News -->
<div class="about-middle" id="news">
	<div class="container">
		      <div class="testimo">
				 	   <h3>Our News</h3>
					   <label class="agile-se"></label>
				 	   <span class="lft-bar-testi"> </span>
				 	   <span class="rit-bar-testi"> </span>
			  </div>
		   <section class="slider">
		<div class="flexslider">
			<ul class="slides">
			  <li>
			  	<div class="banner-bottom">			  		
					<div class="about-midd-main">
						<a href="#" data-toggle="modal" data-target="#myModal1"><img class="agile-img" src="images/n1.jpg" alt=" "></a>
						<div class="w3-test">
							<h4><span>14</span> November</h4>
							<h5><a href="#" data-toggle="modal" data-target="#myModal1">Lucky Draw</a></h5>
							<p> 3 days and 3 nights trip to the warm comforting islands of Dominican.</p>
							<a href="#" class="view" data-toggle="modal" data-target="#myModal1">Read More</a>
						</div>
					</div>
			 	</div>
			  </li>
			  <li>
			 	<div class="banner-bottom">				 	
					<div class="about-midd-main">
						<a href="#" data-toggle="modal" data-target="#myModal2"><img class="agile-img" src="images/n2.jpg" alt=" "></a>
						<div class="w3-test">
							<h4><span>16</span> November</h4>
							<h5><a href="#" data-toggle="modal" data-target="#myModal2">Color Run</a></h5>
							<p>Run to support a good cause and get 70% off on your next deal.</p>
							<a href="#" class="view" data-toggle="modal" data-target="#myModal1">Read More</a>
						</div>
					</div>
			 	</div>
			  </li>
			  <li>
			 	<div class="banner-bottom">			 	
					<div class="about-midd-main">
						<a href="#" data-toggle="modal" data-target="#myModal3"><img class="agile-img" src="images/n3.jpg" alt=" "></a>
						<div class="w3-test">
							<h4><span>18</span> November</h4>
							<h5><a href="#" data-toggle="modal" data-target="#myModal3">Lotus City</a></h5>
							<p> Get 100% off on your staying expanse on your trip to Lotus City.</p>
							<a href="#" class="view" data-toggle="modal" data-target="#myModal1">Read More</a>
						</div>
					</div>
					
			 	</div>
			  </li>
		    </ul>
		</div>
		 <div class="clearfix"> </div>
	  </section>
	</div>
</div>

<!-- Modal1 -->
						<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" >
							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4>Our News</h4>
											<p>ENTER NOW AND WIN!</p>
											<img src="images/n1.jpg" alt="blog-image" />
											<span> 3 days and 3 nights trip to the warm comforting islands of Dominican.</span>
									</div>
								</div>
						
							</div>
				       </div>
					   <!-- //Modal1 -->
					<!-- Modal2 -->
						<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" >
							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4>Our News</h4>
											<p>RUN THE COLOR RUN</p>
											<img src="images/n2.jpg" alt="blog-image" />
											<span>Run to support a good cause and get 70% off on your next deal.</span>
									</div>
								</div>
						
							</div>
				       </div>
					   <!-- //Modal2 -->
					   <!-- Modal3 -->
						<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" >
							<div class="modal-dialog">
							<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4>Our News</h4>
											<p>VISIT THE WHITEST CITY ON EARTH</p>
											<img src="images/n3.jpg" alt="blog-image" />
											<span> Get 100% off on your staying expanse on your trip to Lotus City, Cuba.</span>
									</div>
								</div>
						
							</div>
				       </div>
					   <!-- //Modal3 -->

<!-- //News -->

<!-- Gallery -->
	<div class="gallery" id="gallery">
		<div class="container">
			<h3 class="title-agile2">Our Gallery</h3>
			<label class="agile-se"></label>
			<div class="w3layouts-main">
			<div class="gallery-grids carouselGallery-grid hidden-xs">
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="0" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Swiss Alp" data-imagepath="images/g1.jpg" data-posturl="#" 
						style="background-image:url(images/g1.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="1" data-username=" " data-imagetext="Ice Mountain is Belgium's largest indoor snow centre. The main run is 210 metres long and 30 metres wide with a drag elevator on each side. The smaller slope, for children and beginners, is 85 by 30 metres, and is accessed by a draglift." 
						data-location="Belgium's Indoor Mountain Skiing" data-imagepath="images/g2.jpg" data-posturl="#" 
						style="background-image:url(images/g2.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="2" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Lake Town" data-imagepath="images/g3.jpg" data-posturl="#" 
						style="background-image:url(images/g3.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="3" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Vatican City" data-imagepath="images/g4.jpg" data-posturl="#" 
						style="background-image:url(images/g4.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="4" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Bay of Nova Scotia" data-imagepath="images/g5.jpg" data-posturl="#" 
						style="background-image:url(images/g5.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="5" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Barcelona" data-imagepath="images/g6.jpg" data-posturl="#" 
						style="background-image:url(images/g6.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="6" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Dominican" data-imagepath="images/g7.jpg" data-posturl="#" 
						style="background-image:url(images/g7.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="7" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Tokyo" data-imagepath="images/g8.jpg" data-posturl="#" 
						style="background-image:url(images/g8.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid">
					<div class="carouselGallery-col-1 carouselGallery-carousel" data-likes="3144" data-index="8" data-username=" " data-imagetext="The first image that the phrase “mountain town” brings to mind is usually a scene of the Swiss Alp variety, with quaint lodges tucked beneath snow-dusted peaks. And, though many of the world’s most beautiful mountain towns are indeed alpine (or at least similar), gorgeous high-altitude communities exist in places more typically associated with beaches." 
						data-location="Sky-diving" data-imagepath="images/g9.jpg" data-posturl="#" 
						style="background-image:url(images/g9.jpg);">
						<div class="carouselGallery-item">
							<div class="carouselGallery-item-meta">
								<span class="carouselGallery-item-meta-user">
									Our Gallery
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
				
			</div>
			</div>
		</div>
	</div>
	<!-- //Gallery -->
	
	<!-- Team -->
	<div class="w3ls-team" id="team">
			<div class="container">
				<h3 class="title-agile">Our Team</h3>
				<label class="agile-se"></label>
				<div class="row team-row">
					<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/profilepic.jpg" class="img-responsive" alt="">
							<div class="caption">
								<h4>Jaskaran Singh</h4>
								<p>Portfolio Manager, looks after all the needs to give direction to our mission.</p>						
							</div>
							<div class="social-icons team-icons right-w3l fotw33">
								<ul class="top-links">
									<li><a href="https://www.facebook.com/ItsJay714"><i class="fa fa-facebook"></i></a></li>
							<li><a href="https://twitter.com/Jay_sondh"><i class="fa fa-twitter"></i></a></li>
							<li><a href="https://www.linkedin.com/in/jaskaran-singh-sondh-a88699123/"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="https://plus.google.com/u/0/115139785396744134056"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/vannie.jpg" class="img-responsive" alt="">
							<div class="caption">
								<h4>Vannie Wadhwa</h4>
								<p>Senior Content Designer at Pack My Bags to refresh you with the new exciting content.</p>						
							</div>
							<div class="social-icons team-icons right-w3l fotw33">
								<ul class="top-links">
									<li><a href="https://www.facebook.com/Vannie.wadhwa7"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="https://www.linkedin.com/in/vannie-wadhwa-904822131/"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/amrit.jpg" class="img-responsive" alt="">
							<div class="caption">
								<h4>Amrit Pal Singh</h4>
								<p>Project Manager at Pack My Bags to handle all the project related queries.</p>						
							</div>
							<div class="social-icons team-icons right-w3l fotw33">
								<ul class="top-links">
									<li><a href="https://www.facebook.com/BeatEsterM?pnref=lhc.friends"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="https://www.linkedin.com/in/amrit-singh-3ab49a128/"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="images/anu.jpg" class="img-responsive" alt="">
							<div class="caption">
								<h4>Anu Mahay</h4>
								<p>Customer Service Manager at Pack My Bags to look after smooth customer experience.</p>						
							</div>
							<div class="social-icons team-icons right-w3l fotw33">
								<ul class="top-links">
									<li><a href="https://www.facebook.com/profile.php?id=100011150492873"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="https://www.linkedin.com/in/anu-mahay-93b5b2122/"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //Team -->
		
<!-- Contact -->
<div class="contact" id="contact">
	<div class="container">
		<div class="contact-main">	
			<div class="contact-top">
				<h3>Contact Us</h3>
				<label class="agile-se"></label>
				<p>You are always welcome!</p>
			</div>		 			 
			<div class="contact-block1">
			 	<div class="contact-block-left">
				 	<form action="#" method="post">
				 		<input type="text" placeholder="Name" name="Name" required="">
	                    <input type="email" class="email" placeholder="Email" name="Email" required="">
	                    <input type="text" class="subject" placeholder="Subject" name="Subject" required="">               
	                    <textarea placeholder="Message" name="message"></textarea>
	                    <input type="submit" value="Send">
				 	</form>
			 	</div>
			 	<div class="clearfix"> </div>
			</div>			 
		</div>
	</div>
</div>
<div class="contact-map">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d212126.07899261903!2d150.68928304602147!3d-33.82598834810063!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b129838f39a743f%3A0x3017d681632a850!2sSydney+NSW%2C+Australia!5e0!3m2!1sen!2sin!4v1463468876401"  allowfullscreen></iframe>
</div>
<!-- //Contact -->

<!-- Footer -->
<div class="footer w3ls">
	<div class="container">
		<div class="footer-main">
			<div class="footer-top">
				<div class="col-md-4 ftr-grid fg1">
					<h3>About Us</h3>
					<p>Pack My Bags is here to serve your traveling needs securely and efficiently. You are viewing the online version of our application which allows you to perform all the tasks according to your needs for your ultimate satisfaction.</p>
				</div>
				<div class="col-md-4 ftr-grid fg2">
					<h3>Our Address</h3>
					<div class="ftr-address">
						<div class="local">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</div>
						<div class="ftr-text">
							<p>221B Baker Street, London</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="ftr-address">
						<div class="local">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</div>
						<div class="ftr-text">
							<p>+1 (647) 887 8176</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="ftr-address">
						<div class="local">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</div>
						<div class="ftr-text">
							<p><a href="mailto:info@example.com">info@pmb.com</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 ftr-grid fg2">
					<h3>Connect With Us</h3>
					<div class="right-w3l fotw3">
						<ul class="top-links">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			   <div class="clearfix"> </div>
			</div>
			<div class="copyrights">
				<p>© 2017 Pack My Bags. All Rights Reserved | Design by  <a href="https://www.linkedin.com/in/jaskaran-singh-sondh-a88699123/" target="_blank">Jaskaran Singh</a> </p>
			</div>
		</div>
	</div>
</div>
<!-- Footer -->	
									
<!-- js-scripts -->						
		<!-- js -->
			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
		<!-- //js -->
			
		<!-- nav-script -->
			<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
			<script src="js/classie.js"></script>
			<script>
			    var menuLeft = document.getElementById('cbp-spmenu-s1'),
					showLeftPush = document.getElementById('showLeftPush'),
					showRightPush = document.getElementById('showRightPush'),
					body = document.body;

			    showLeftPush.onclick = function () {
			        classie.toggle(this, 'active');
			        classie.toggle(body, 'cbp-spmenu-push-toright');
			        classie.toggle(menuLeft, 'cbp-spmenu-open');
			        disableOther('showLeftPush');
			    };

			    function disableOther(button) {
			        if (button !== 'showLeftPush') {
			            classie.toggle(showLeftPush, 'disabled');
			        }
			        if (button !== 'showRightPush') {
			            classie.toggle(showRightPush, 'disabled');
			        }
			    }
			</script>
		<!-- nav-script -->
		
		<!-- banner-slide -->
						<script src="js/responsiveslides.min.js"></script>
					   <script>
					       // You can also use "$(window).load(function() {"
					       $(function () {
					           // Slideshow 4
					           $("#slider4").responsiveSlides({
					               auto: true,
					               pager: true,
					               nav: true,
					               speed: 500,
					               namespace: "callbacks",
					               before: function () {
					                   $('.events').append("<li>before event fired.</li>");
					               },
					               after: function () {
					                   $('.events').append("<li>after event fired.</li>");
					               }
					           });

					       });
					  </script>
		<!-- //banner-slide -->
					  
		<!-- FlexSlider -->
				  <script defer src="js/jquery.flexslider.js"></script>
				  <script type="text/javascript">
				      $(function () {

				      });
				      $(window).load(function () {
				          $('.flexslider').flexslider({
				              animation: "slide",
				              start: function (slider) {
				                  $('body').removeClass('loading');
				              }
				          });
				      });
				  </script>
		<!-- FlexSlider -->
		
		<!-- Portfolio -->
			<script src="js/main.js"></script>
		<!-- //Portfolio -->
		
		<!-- start-smoth-scrolling -->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/easing.js"></script>
			<script type="text/javascript">
			    jQuery(document).ready(function ($) {
			        $(".scroll").click(function (event) {
			            event.preventDefault();
			            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
			        });
			    });
			</script>
		<!-- start-smoth-scrolling -->
	
		<!-- for-bottom-to-top smooth scrolling -->
			<script type="text/javascript">
			    $(document).ready(function () {
			        /*
                        var defaults = {
                        containerID: 'toTop', // fading element id
                        containerHoverID: 'toTopHover', // fading element hover id
                        scrollSpeed: 1200,
                        easingType: 'linear' 
                        };
                    */
			        $().UItoTop({ easingType: 'easeOutQuart' });
			    });
			</script>
			<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		<!-- //for-bottom-to-top smooth scrolling -->
		
<!-- //js-scripts -->	

</body>
</html>
