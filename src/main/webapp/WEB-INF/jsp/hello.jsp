<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>${portfolio.title}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700" rel="stylesheet">

	<!-- Animate.css -->
	<link rel="stylesheet" href="<c:url value="/resources/css/animate.css"></c:url>"/>
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<c:url value="/resources/css/icomoon.css"></c:url>"/>
	<!-- Bootstrap  -->
	<link rel="stylesheet"  href="<c:url value="/resources/css/bootstrap.css"></c:url>"/>
	<!-- Flexslider  -->
	<link rel="stylesheet" href="<c:url value="/resources/css/flexslider.css"></c:url>"/>
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"></c:url>"/>
	<link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.default.min.css"></c:url>"/>
	<!-- Theme style  -->
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css"></c:url>"/>

	<!-- Modernizr JS -->
	<script src="<c:url value="/resources/js/modernizr-2.6.2.min.js"></c:url>"/></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="<c:url value="/resources/js/respond.min.js"></c:url>"/></script>
	<![endif]-->

	</head>
	<body>
	<div id="colorlib-page">
		<div class="container-wrap">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<div class="text-center">
				<div class="author-img" style="background-image: url(${portfolio.image_url});"></div>
				<h1 id="colorlib-logo"><a href="index.html">${portfolio.title}</a></h1>
				<span class="position"><a href="#">UI/UX/Designer</a> in Colombia</span>
			</div>
			<nav id="colorlib-main-menu" role="navigation" class="navbar">
				<div id="navbar" class="collapse">
					<ul>
						<li class="active"><a href="#" data-nav-section="home">Home</a></li>
						<li><a href="#" data-nav-section="about">About</a></li>
						<li><a href="#" data-nav-section="timeline">Timeline</a></li>
						<li><a href="#" data-nav-section="skills">Skills</a></li>
						<li><a href="#" data-nav-section="education">Education</a></li>
						<li><a href="#" data-nav-section="experience">Experience</a></li>
						<li><a href="#" data-nav-section="work">Work</a></li>
						<li><a href="#" data-nav-section="blog">Blog</a></li>
						<li><a href="#" data-nav-section="contact">Contact</a></li>
					</ul>
				</div>
			</nav>

		</aside>

		<div id="colorlib-main">
			<section id="colorlib-hero" class="js-fullheight" data-section="home">
				<div class="flexslider js-fullheight">
					<ul class="slides">
					<script src=""/></script>
				   	<li style="background-image: url(<c:url value="/resources/images/cover_bg_1.jpg"></c:url>);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner js-fullheight">
					   					<div class="desc">
						   					<h1>Hi! <br>I'm ${portfolio.title}</h1>
												<p><a class="btn btn-primary btn-learn">Download CV <i class="icon-download4"></i></a></p>
											</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				   	<li style="background-image: url(<c:url value="/resources/images/img_bg_3.jpg"></c:url>);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc">
						   					<h1>I am <br>a Designer</h1>
												<p><a class="btn btn-primary btn-learn">View Portfolio <i class="icon-briefcase3"></i></a></p>
											</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
				  	</ul>
			  	</div>
			</section>

			<section class="colorlib-about" data-section="about">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-12">
							<div class="row row-bottom-padded-sm animate-box" data-animate-effect="fadeInLeft">
								<div class="col-md-12">
									<div class="about-desc">
										<span class="heading-meta">About Us</span>
										<h2 class="colorlib-heading">Who Am I?</h2>
										<p><strong>Hi I'm ${portfolio.title}</strong> ${portfolio.description}</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
									<div class="services color-1">
										<span class="icon2"><i class="icon-bulb"></i></span>
										<h3>Graphic Design</h3>
									</div>
								</div>
								<div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
									<div class="services color-2">
										<span class="icon2"><i class="icon-globe-outline"></i></span>
										<h3>Web Design</h3>
									</div>
								</div>
								<div class="col-md-3 animate-box" data-animate-effect="fadeInTop">
									<div class="services color-3">
										<span class="icon2"><i class="icon-data"></i></span>
										<h3>Software</h3>
									</div>
								</div>
								<div class="col-md-3 animate-box" data-animate-effect="fadeInBottom">
									<div class="services color-4">
										<span class="icon2"><i class="icon-phone3"></i></span>
										<h3>Application</h3>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
									<div class="hire">
										<h2>I am happy to know you <br>that 300+ projects done sucessfully!</h2>
										<a href="#" class="btn-hire">Hire me</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
                <section class="colorlib-services" data-section="timeline">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">What I do?</span>
							<h2 class="colorlib-heading">Here are some of my stories</h2>
						</div>
					</div>
					<div class="row row-pt-md">
						<div class="col-md-12 text-center animate-box">
							<div class="services color-1">
								<span class="icon">
									<i class="icon-bulb"></i>
								</span>
								<div class="desc">
									<h3>Twitter timeline</h3>
									<p>Here is my user timeline, enjoy it!</p>
									<a class="twitter-timeline" data-tweet-limit="5" href="https://twitter.com/${portfolio.twitter_user_name}">Tweets by ${portfolio.twitter_user_name}</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div><!-- end:colorlib-main -->
	</div><!-- end:container-wrap -->
	</div><!-- end:colorlib-page -->

	<!-- jQuery -->
	<script src="<c:url value="/resources/js/jquery.min.js"></c:url>"/></script>
	<!-- jQuery Easing -->
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js"></c:url>"/></script>
	<!-- Bootstrap -->
	<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"/></script>
	<!-- Waypoints -->
	<script src="<c:url value="/resources/js/jquery.waypoints.min.js"></c:url>"/></script>
	<!-- Flexslider -->
	<script src="<c:url value="/resources/js/jquery.flexslider-min.js"></c:url>"/></script>
	<!-- Owl carousel -->
	<script src="<c:url value="/resources/js/owl.carousel.min.js"></c:url>"/></script>
	<!-- Counters -->
	<script src="<c:url value="/resources/js/jquery.countTo.js"></c:url>"/></script>


	<!-- MAIN JS -->
	<script src="<c:url value="/resources/js/main.js"></c:url>"/></script>

	</body>
</html>

