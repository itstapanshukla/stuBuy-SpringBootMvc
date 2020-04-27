<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" contentType="text/html"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.service.accountdetails.LoginAccount"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>stuBuy</title>

<link href="/LoginPage.css" rel="stylesheet" type="text/css" />
<link href="/add_item.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>

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
				<li class="nav-item"></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"></li>
				<li class="nav-item" style="padding-left: 20px;"><c:if
						test="${empty user}">
						<button type="button"
							class="btn btn-primary btn-md navbar-toggle collapsed pull-left"
							data-toggle="modal" data-target="#myModal">signup</button>
					</c:if> <c:if test="${not empty user}">
						<li class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">${user.username}</button>
							<ul class="dropdown-menu ml-auto" style="list-style-type: none;">
								<li style="padding: 10px;"><a
									href="fc/?page=Logout&type=model">your Cart</a></li>
								<li style="padding: 10px;"><a
									href="fc/?page=Logout&type=model">your WishList</a></li>
								<li style="padding: 10px;"><a
									href="fc/?page=Logout&type=model">logout</a></li>
							</ul>

						</li></li>
				</c:if>
			</ul>
		</div>
	</nav>
	<div class="container-fluid"
		style="background-color: window; padding: 10px;">
		<div class="row" style="background-color: #efefef">
			<c:forEach var="listOfCarts" items="${listOfCarts}"
				varStatus="status">
				<div class="col-sm-6 col-lg-6 col-md-4 col-4">
					<div class="card" style="width: 100%">
						<a href="/img/details/${listOfCarts.productId}"> <img
							class="card-img-top" src="/img/display/${listOfCarts.productId}"
							alt="Card image" style="width: 20%; height: 300px;">
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="row" style="background-color: #efefef">
			<br> <br>
		</div>

	</div>

</body>
</html>
