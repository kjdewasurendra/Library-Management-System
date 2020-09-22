<%-- 
    Document   : index
    Created on : Sep 10, 2020, 12:18:57 PM
    Author     : Ukdmp Kasun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">

	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Library</title>

	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|Roboto:400,500" rel="stylesheet">
	<link href="assets/ico/css/all.css" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>

	<!-- Start Header Area -->
	<header class="default-header">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<a class="navbar-brand" href="index.jsp">
					<h2 style="color: white;">LIBRARY</h2>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="fa fa-bars"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li><a class="active" href="index.jsp">Home</a></li>
						<li class="dropdown">
							<a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								Library
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="books.jsp">Books</a>
								<a class="dropdown-item" href="passpapers.jsp">Pass Papers</a>
								<a class="dropdown-item" href="magazines.jsp">Magazines</a>
								<a class="dropdown-item" href="otherpapers.jsp">Other Papers</a>
							</div>
						</li>
						<li><a href="contact.jsp">Contact</a></li>
						<li><a href="./Auth/login.jsp">My Account</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End Header Area -->

	<!-- start banner Area -->
	<section class="home-banner-area relative" id="home" data-parallax="scroll" data-image-src="img/l1.jpg">
		<div class="overlay-bg overlay"></div>
		<div class="container">
			<div class="row fullscreen">
				<div class="banner-content col-lg-12">
					<p>Come To Library and Learn Something New</p>
					<h1>
						Welcome<br>
						To The Library
					</h1>
					<a href="#library" class="primary-btn">View Library</a>
				</div>
			</div>
		</div>

	</section>
	<!-- End banner Area -->

	<!-- Start features Area -->
	<section class="features-area section-gap-top" id="library">
		<div class="container">
			<div class="row feature_inner">

				<div class="col-lg-3 col-md-6">
					<a href="books.jsp" style="color: grey">
					<div class="feature-item">
						<i class="fas fa-book"></i>
						<h4>Books</h4>
						<p>You can see all the books in the library. To get it, you have to come to the library.  </p>
					</div></a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="passpapers.jsp" style="color: grey">
					<div class="feature-item">
						<i class="fab fa-leanpub"></i>
						<h4>Pass Papers</h4>
						<p>You can see all the pass papers in the library. To get it, you have to come to the library. </p>
					</div></a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="magazines.jsp" style="color: grey">
					<div class="feature-item">
						<i class="fas fa-newspaper"></i>
						<h4>Magazines</h4>
						<p>You can see all the magazines in the library. To get it, you have to come to the library. </p>
					</div></a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="otherpapers.jsp" style="color: grey">
					<div class="feature-item">
						<i class="fas fa-layer-group"></i>
						<h4>Other Papers</h4>
						<p>You can see all other papers in the library. To get it, you have to come to the library. </p>
					</div></a>
				</div>
			</div>
		</div>
	</section>
	<!-- End features Area -->





	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/main.js"></script>
</body>

</html>
