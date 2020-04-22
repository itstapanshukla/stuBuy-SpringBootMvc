<%@page import="java.util.*" contentType="text/html"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.service.accountdetails.LoginAccount"%>
<!DOCTYPE html>
<html>
<head>

<title>stuBuy</title>
</head>
<script src="/E-Commerce/JS/registration.js"></script>
<script src="/E-Commerce/JS/loginjs.js"></script>

<link href="webApp/src/main/webapp/WEB-INF/CSS/LoginPage.css"
	rel="stylesheet" type="text/css" />
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
			href="/E-Commerce/fc/?page=login&type=view"><strong>stuBuy</strong></a>
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
								<li style="padding: 10px;"><a
									href="fc/?page=homepage_1&type=view">your Account</a></li>
								<li style="padding: 10px;"><a
									href="fc/?page=Logout&type=model">your Orders</a></li>
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
								<button type="button" class="btn btn-primary btn-lg"
									style="float: left;">Login</button>
							</div>
							<!-- Modal body -->
							<div class="modal-body">
								<form action="/account/login" method="post">
									<br> <label for="email">UserId</label> <input
										class="form-control" id="eid"
										onblur="loginVerify('eid', 'sid')" type="text"
										name="useremail" placeholder="userid"><span id="sid"></span><br>
									<label for="pwd">Password</label> <input class="form-control"
										id="ppid" type="password" name="password"
										placeholder="password"><br>
									<div class="form-group form-check">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox"> Remember me
										</label>
									</div>
									<input type="submit" value="login"
										onsubmit="loginVerify('eid', 'ppid')" class="btn btn-primary">
									<a href="fc/?page=forgetpassword&type=view">forget password
										?</a>
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
								<button type="button" class="btn btn-primary btn-lg"
									style="float: left">Registration</button>
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
										id="errorfname"></span><br></li>
									<!-- 									<li style="list-style: none;"><input class="form-control" -->
									<!-- 										type="text" placeholder="Last Name" id="lname" name="lname" -->
									<!-- 										onblur="validator('lname', 'errorlname')"><span -->
									<!-- 										id="errorlname"></span><br></li> -->
									<!-- 									<li style="list-style: none;"><input class="form-control" -->
									<!-- 										type="text" placeholder="Phone" id="phoneid" -->
									<!-- 	id="errorphoneid"></span><br>									onblur="validator('phoneid', 'errorphoneid')" name="phone"><span -->

									</li>
									<!--    <select name="city">
                                                <option value="1">Zamania</option
                                                <option value="2">Lucknow</option>
                                                <option value="3">Varanasi</option>
    
                                            </select> -->
									<input class="btn btn-info" type="submit" value="register">
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
						style="max-width: 100%; height: 300px;">
						<img class="mySlides"
							src="/E-Commerce/images/fun-swimming-products.jpg"
							style="width: 100%; height: 300px;"> <img class="mySlides"
							src="/E-Commerce/images/wrist-watches.jpg"
							style="width: 100%; height: 300px;"> <img class="mySlides"
							src="/E-Commerce/images/malte-wingen-PDX_a_82obo-unsplash.jpg"
							style="width: 100%; height: 300px;">
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid" style="padding: 0px;">
			<%-- for (int i = 0; i < 5; i++) { --%>
			<div class="row" style="background-color: #efefef">
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shirt/red-t-shirt.jpg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">

							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$10 Red T-Shirt</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shirt/blank-colored-t-shirts.jpg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$13 Shirts</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shirt/purple-t-shirt.jpg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$20 Voilet T-Shirt</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shirt/cobalt-blue-t-shirt.jpg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
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
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/jwl/galaxy-earrings.jpg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$25 blue Earring</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top" src="/E-Commerce/images/jwl/chain.jpg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$30 chain</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/jwl/boho-earrings.jpg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$35 Earring</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/jwl/braceltes.jpg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
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
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/electronics/24640266-group-of-household-appliances-on-a-white-background.jpg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$100 Washing Machine</h>

						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/electronics/two-computer-flat-screen-monitors-turned-on-777001.jpg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$300 Television</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/electronics/mackBook.jpeg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$2000 MacBook Air</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/electronics/microwave.jpg"
							alt="Card image" style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$120 MicroWave</h>
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
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shoes/shoes4.jpeg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$20 Casual Shoes</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shoes/adidas.jpg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$80 Adidas Shoes</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shoes/shoes1.jpg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$40 Puma Shoes</h>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-lg-3 col-md-3 col-3">
					<div class="card" style="width: 100%;">
						<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics">
							<img class="card-img-top"
							src="/E-Commerce/images/shoes/shoes2.jpeg" alt="Card image"
							style="width: 100%; height: auto;">
						</a>
						<div class="card-body">
							<a href="fc/?page=AddToCart&type=model&pid=123&cat=Electronics"
								class="btn btn-primary btn btn-sm">Buy</a>
							<h style="color: black">$120 Adidas Casual Shoes</h>
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