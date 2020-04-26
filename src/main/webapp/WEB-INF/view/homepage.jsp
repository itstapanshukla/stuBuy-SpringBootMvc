<%@page import="java.util.*" contentType="text/html"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.service.accountdetails.LoginAccount"%>
<!DOCTYPE html>
<html>
<head>

<title>stuBuy icon</title>

<link rel="icon" href="C:\Users\Nafees Abdullah\Desktop\images\icon.jpg"
	type="image/x-icon">
</head>
<script src="/E-Commerce/JS/registration.js"></script>
<script src="/E-Commerce/JS/loginjs.js"></script>
<script src="/cart.js"></script>
<link href="/LoginPage.css" rel="stylesheet" type="text/css" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="https://www.w3schools.com/w3css/4/w3.css">

<body>

	<nav
		class="navbar navbar-expand-md bg-dark navbar-dark navbar navbar-fixed-top">

		<a class="navbar-brand"
			style="color: #efefef; font-family: fantasy; font-size: 20px;"
			href="/account/home"><strong>stuBuy</strong></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav" style="float: right">
				<li class="nav-item">
					<form action="fc/?page=Search&type=model" method="post">
						<ul class="navbar-nav ml-auto">
							<li><input class="form-control" style="width: 300px;"
								type="text" name="search" placeholder="Search anythings..."></li>
							<li style="padding-left: 30px;"><input type="submit"
								value="search" class="btn btn-primary"></li>
						</ul>
					</form>

				</li>
				<li class="nav-item"></li>
				<li class="nav-item"><c:if test="${empty user}">
						<script type="text/javascript">
							$(window).on('load', function() {
								$('#SignModal').modal('show');
							});
						</script>
					</c:if></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"></li>
				<li class="nav-item" style="padding-left: 20px;"><c:if
						test="${empty user}">
						<li style="padding-right: 30px;"><button type="button"
								class="btn btn-primary btn-md navbar-toggle collapsed pull-left"
								data-toggle="modal" data-target="#myModal">signup</button></li>
						<li>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#SignModal">login</button>
						</li>
					</c:if> <c:if test="${not empty user}">
						<li class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">${user.username}</button>
							<ul class="dropdown-menu ml-auto" style="list-style-type: none;">
								<li style="padding: 10px;"><a href="/account/userpage">My
										Account</a></li>
								<li style="padding: 10px;"><a
									href="/account/orders/${user.useremail}">My Orders</a></li>
								<li style="padding: 10px;"><a href="/account/logout">logout</a></li>
							</ul>

						</li>
					</c:if></li>


			</ul>
		</div>
	</nav>




	<div class="container-fluid"
		style="background-color: window; padding: 0px;">
		<div class="row" style="background-color: bisque;">


			<div class=" col-lg-2 col-md-3 col-sm-3 col-4"
				style="list-style-type: none;">

				<li class="dropdown" style="padding-top: 6px;">
					<button class="btn btn-default dropdown-toggle pe-7s-user"
						type="button" data-toggle="dropdown">
						Electronics <span class="caret"></span>
					</button>
					<ul class="dropdown-menu ml-auto">
						<li style="padding: 10px;"><a
							href="fc/?page=homepage_1&type=view">Mobiles</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Mobile Accessories</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Laptops</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Speakers</a></li>
					</ul>

				</li>

			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 col-4"
				style="padding-top: 6px;">
				<li class="dropdown" style="list-style-type: none;">
					<button class="btn btn-default dropdown-toggle pe-7s-user"
						type="button" data-toggle="dropdown">
						Men <span class="caret"></span>
					</button>
					<ul class="dropdown-menu ml-auto" style="list-style-type: none;">
						<li style="padding: 10px;"><a
							href="fc/?page=homepage_1&type=view">FootWear</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Clothing</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Watches</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Sports</a></li>
					</ul>

				</li>


			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 col-4"
				style="padding-top: 6px;">

				<li class="dropdown" style="list-style-type: none;">
					<button class="btn btn-default dropdown-toggle pe-7s-user"
						type="button" data-toggle="dropdown">
						Women <span class="caret"></span>
					</button>
					<ul class="dropdown-menu ml-auto">
						<li style="padding: 10px;"><a
							href="fc/?page=homepage_1&type=view">FootWear</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Clothing</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=homepage_1&type=view">Sports Wear</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">Watches</a></li>
					</ul>
				</li>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 col-4"
				style="padding-top: 6px;" style="list-style-type:none;">
				<li class="dropdown" style="list-style-type: none;">
					<button class="btn btn-default dropdown-toggle pe-7s-user"
						type="button" data-toggle="dropdown">
						Sports <span class="caret"></span>
					</button>
					<ul class="dropdown-menu ml-auto">
						<li style="padding: 10px;"><a
							href="fc/?page=homepage_1&type=view">My Account</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">logout</a></li>
					</ul>
				</li>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 col-4"
				style="padding-top: 6px;" style="list-style-type:none;">
				<li class="dropdown" style="list-style-type: none;">
					<button class="btn btn-default dropdown-toggle pe-7s-user"
						type="button" data-toggle="dropdown">
						offer zone <span class="caret"></span>
					</button>
					<ul class="dropdown-menu ml-auto">
						<li style="padding: 10px;"><a
							href="fc/?page=homepage_1&type=view">My Account</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">logout</a></li>
					</ul>
				</li>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 col-4"
				style="padding-top: 6px;" style="list-style-type:none;">
				<li class="dropdown" style="list-style-type: none;">
					<button class="btn btn-default dropdown-toggle pe-7s-user"
						type="button" data-toggle="dropdown">
						About us <span class="caret"></span>
					</button>
					<ul class="dropdown-menu ml-auto">
						<li style="padding: 10px;"><a
							href="fc/?page=homepage_1&type=view">My Account</a></li>
						<li style="padding: 10px;"><a
							href="fc/?page=Logout&type=model">logout</a></li>
					</ul>
				</li>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6  col-lg-6 col-sm-12 col-6">
				<!-- The Modal -->
				<div class="modal hide fade" id="SignModal" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title"></h4>
								<button type="button" class="fade" data-dismiss="modal">&times;</button>
								<!-- 								<button type="button" class="btn btn-primary btn-lg" -->
								<!-- 									style="float: left;">Login</button> -->
							</div>
							<!-- Modal body -->
							<div class="modal-body">
								<form action="/account/login" method="post">
									<p class="hint-text">Sign in with your social media account</p>
									<div class="form-group social-btn clearfix">
										<a href="#" class="btn btn-primary pull-left"><i
											class="fa fa-facebook"></i> Facebook</a> <a href="facebook.com"
											class="btn btn-info pull-right"><i class="fa fa-twitter"></i>
											Twitter</a>
									</div>
									<div class="or-seperator">
										<b>or</b>
									</div>
									<div class="form-group">
										<input class="form-control" type="text" name="useremail"
											placeholder="userID">
									</div>
									<div class="form-group">
										<input class="form-control" type="text" name="password"
											placeholder="password">
									</div>
									<input type="submit" class="btn btn-primary btn-block"
										value="Login">
									<div class="form-footer">
										<a href="/account/forget">Forgot Your password?</a>
									</div>
								</form>

							</div>
							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4  col-lg-4 col-sm-4"></div>
			<div class="col-md-4  col-lg-4 col-sm-4">
				<!-- Modal -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="fade" data-dismiss="modal">&times;</button>
								<!-- 								<button type="button" class="btn btn-primary btn-lg" -->
								<!-- 									style="float: left">Registration</button> -->
							</div>
							<div class="modal-body">
								<form action="/account/signup" method="post">
									<input class="form-control" type="text" name="useremail"
										placeholder="userid" id="eeid"
										onblur="aCaller('eeid', 'errid')"> <span id="errid"></span><br>
									</li>
									<li style="list-style: none;"><input class="form-control"
										type="text" placeholder="Userphone" id="pid"
										onblur="validator('pid', 'errorpid')" name="userphone">
										<span id="errorpid"></span><br></li>
									<li style="list-style: none;"><input class="form-control"
										type="password" placeholder="Password" id="pid"
										onblur="validator('pid', 'errorpid')" name="password">
										<span id="errorpid"></span><br></li>
									<li style="list-style: none;"><input class="form-control"
										type="password" placeholder="Re-Password" id="pid"
										onblur="validator('pid', 'errorpid')" name="password2">
										<span id="errorpid"></span><br></li>
									<li style="list-style: none;"><input class="form-control"
										type="text" placeholder="Full Name" name="username" id="fname"
										onblur="validator('fname', 'errorfname')"><span
										id="errorfname"></span><br></li> <input class="btn btn-info"
										type="submit" value="register">
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-12"
					style="padding: 2px;">
					<div class="w3-content w3-section"
						style="max-width: 100%; height: 400px;">
						<img class="mySlides" src="/img/display/image.jpg"
							style="width: 100%; height: 400px;"> <img class="mySlides"
							src="/img/display/image2.jpg" style="width: 100%; height: 400px;">
						<img class="mySlides" src="/img/display/img5.jpg"
							style="width: 100%; height: 400px;">
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid" style="padding: 0px;">
			<%-- for (int i = 0; i < 5; i++) { --%>
			<div class="row" style="background-color: #efefef">
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/t1.png"> <img class="card-img-top"
							src="/img/display/t1.png" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body  btn btn-primary btn btn-sm"
							onclick="addTo('t1.png')">
							ADD TO BAG
							<h style="color: black">$10 Red T-Shirt</h>
						</div>

					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/t2.jpg"> <img class="card-img-top"
							src="/img/display/t2.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('t2.jpg')">
							ADD TO BAG
							<h style="color: black">$13 Shirts</h>
						</div>

					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/t3.jpg"> <img class="card-img-top"
							src="/img/display/t3.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('t3.jpg')">
							ADD TO BAG
							<h style="color: black">$20 Voilet T-Shirt</h>
						</div>

					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/t4.jpg"> <img class="card-img-top"
							src="/img/display/t4.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('t4.jpg')">
							ADD TO BAG</a>
							<h style="color: black">$15 Blue T-Shirt</h>

						</div>

					</div>
				</div>
			</div>
			<div class="row" style="height: 20px; width: 100%;"></div>
			<%-- 2nd row --%>
			<div class="row" style="background-color: #efefef">
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/j1.jpg"> <img class="card-img-top"
							src="/img/display/j1.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('j1.jpg')">
							ADD TO BAG
							<h style="color: black">$25 blue Earring</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/j2.jpg"> <img class="card-img-top"
							src="/img/display/j2.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('j2.jpg')">
							ADD TO BAG
							<h style="color: black">$30 chain</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/j3.jpg"> <img class="card-img-top"
							src="/img/display/j3.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('j3.jpg')">
							ADD TO BAG
							<h style="color: black">$35 Earring</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/j4.jpg"> <img class="card-img-top"
							src="/img/display/j4.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('j4.jpg')">
							ADD TO BAG
							<h style="color: black">$25 bracelet</h>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="height: 20px; width: 100%;"></div>
			<%-- complt --%>
			<%-- 3rd row --%>
			<div class="row" style="background-color: #efefef">
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/e1.png"> <img class="card-img-top"
							src="/img/display/e1.png" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('e1.png')">
							ADD TO BAG
							<h style="color: black">$100 Speaker</h>

						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/e2.jpg"> <img class="card-img-top"
							src="/img/display/e2.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('e2.jpg')">
							ADD TO BAG
							<h style="color: black">$300 iPhone</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/e3.jpg"> <img class="card-img-top"
							src="/img/display/e3.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('e3.jpg')">
							ADD TO BAG
							<h style="color: black">$2000 Mac Air</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/e4.jpg"> <img class="card-img-top"
							src="/img/display/e4.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('e4.jpg')">
							ADD TO BAG
							<h style="color: black">$120 machine</h>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="height: 20px; width: 100%;"></div>
			<%-- complete --%>
			<%-- 4th row --%>
			<div class="row" style="background-color: #efefef">
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/s1.png"> <img class="card-img-top"
							src="/img/display/s1.png" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('s1.png')">
							ADD TO BAG
							<h style="color: black">$20 Casual Shoes</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="/img/details/s2.jpg"> <img class="card-img-top"
							src="/img/display/s2.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('s2.jpg')">
							ADD TO BAG
							<h style="color: black">$80 Adidas Shoes</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/s3.png"> <img class="card-img-top"
							src="/img/display/s3.png" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('s3.png')">
							ADD TO BAG
							<h style="color: black">$40 Puma Shoes</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="/img/details/s4.jpg"> <img class="card-img-top"
							src="/img/display/s4.jpg" alt="Card image"
							style="width: 100%; height: 300px;">
						</a>
						<div class="card-body btn btn-primary btn btn-sm"
							onclick="addTo('s4.jpg')">
							ADD TO BAG
							<h style="color: black">$120 Casual Shoes</h>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="height: 20px; width: 100%;"></div>
			<%-- complete --%>
			<%-- }--%>
		</div>
	</div>
	<script>
		var myIndex = 0;
		carousel();
		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 2000);
		}
	</script>
	<style>
.mySlides {
	display: none;
}
</style>
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-12 footer-info">
						<br> <br>
						<h1>stuBuy</h1>
						<p>Its an e- Commerse Website created for the students where
							they can buy new as well as used products which are being sold by
							other Students</p>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-4 footer-links">
						<br> <br>
						<h4>Usefull Links</h4>
						<ul>
							<li><a href="#">Link</a></li>
							<li><a href="#">Link</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-4 footer-contact">
						<br> <br>
						<h4>Contact Us</h4>
						<p>
							Integral University<br /> Kursi Road, Lucknow<br /> India<br />
							<strong>Phone: +916393545132</strong><br /> <strong>Email:
								contact.nafees12@gmail.com</strong><br />
						</p>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-4 footer-newsletter">
						<br> <br>
						<h4>Our Newsletter</h4>
						<p>
							---------------------------------------------------------------------------------</p>
						<form accept="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>