<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="src/main/webapp/WEB-INF/CSS/LoginPage.css" rel="stylesheet"
	type="text/css" />
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="../../JS/loginjs.js" type="text/javascript"></script>
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
			<ul class="navbar-nav">
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



			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"></li>
				<li class="nav-item" style="padding-left: 20px;">
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#SignModal">login</button>
				</li>

			</ul>
		</div>
	</nav>
	<div class="modal fade" id="SignModal" role="dialog">
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
							<a href="#">Forgot Your password?</a>
						</div>
					</form>


				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
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
							placeholder="userid" id="eeid" onblur="aCaller('eeid', 'errid')">
						<span id="errid"></span><br>
						</li>
						<li style="list-style: none;"><input class="form-control"
							type="text" placeholder="Userphone" id="pid"
							onblur="validator('pid', 'errorpid')" name="userphone"> <span
							id="errorpid"></span><br></li>
						<li style="list-style: none;"><input class="form-control"
							type="password" placeholder="Password" id="pid"
							onblur="validator('pid', 'errorpid')" name="password"> <span
							id="errorpid"></span><br></li>
						<li style="list-style: none;"><input class="form-control"
							type="password" placeholder="Re-Password" id="pid"
							onblur="validator('pid', 'errorpid')" name="password2"> <span
							id="errorpid"></span><br></li>
						<li style="list-style: none;"><input class="form-control"
							type="text" placeholder="Full Name" name="username" id="fname"
							onblur="validator('fname', 'errorfname')"><span
							id="errorfname"></span><br></li> <input class="btn btn-info"
							type="submit" value="register">
					</form>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	<div class="container-fluid" style="background-color: beige">
		<div class="container center_div ">
			<div class="row" style="height: 150px; width: 100%"></div>
			<div class="row" style="height: 150px; width: 100%">
				<div class="col-md-12">
					<form action="/E-Commerce/fc/?page=ForgetPassword&type=model"
						method="post">
						<br> <input class="form-control " id="eid"
							placeholder="user id" onblur="loginVerify('eid', 'sid')"
							type="text" name="email"><span id="sid"></span><br>
						<input type="submit" name="login" class="btn btn-primary ">



					</form>
				</div>
			</div>
			<div class="row" style="height: 150px; width: 100%"></div>

		</div>


	</div>

</body>
</html>