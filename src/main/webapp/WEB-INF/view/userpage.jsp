
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.service.accountdetails.LoginAccount"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>


<meta name="viewport" content="width=device-width, initial-scale=1">
<META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">

<title>stuBuy</title>

<link href="/src/main/webapp/WEB-INF/CSS/LoginPage.css" rel="stylesheet"
	type="text/css" />
<link href="/src/main/webapp/WEB-INF/CSS/add_item.css" rel="stylesheet"
	type="text/css" />
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

	<div class="container-fluid">


		<div class="row">


			<!-- 			<div class=" col-lg-2 col-md-3 col-sm-3 col-4" -->
			<!-- 				style="list-style-type: none;"> -->

			<!-- 				<li class="dropdown" style="padding-top: 10px;"> -->
			<!-- 					<button class="btn btn-default dropdown-toggle pe-7s-user" -->
			<!-- 						type="button" data-toggle="dropdown"> -->
			<!-- 						Electronics <span class="caret"></span> -->
			<!-- 					</button> -->
			<!-- 					<ul class="dropdown-menu ml-auto"> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=homepage_1&type=view">Mobiles</a></li> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=Logout&type=model">Mobile Accessories</a></li> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=Logout&type=model">Laptops</a></li> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=Logout&type=model">Speakers</a></li> -->
			<!-- 					</ul> -->

			<!-- 				</li> -->

			<!-- 			</div> -->
			<!-- 			<div class="col-lg-2 col-md-3 col-sm-3 col-4" -->
			<!-- 				style="padding-top: 10px;"> -->
			<!-- 				<li class="dropdown" style="list-style-type: none;"> -->
			<!-- 					<button class="btn btn-default dropdown-toggle pe-7s-user" -->
			<!-- 						type="button" data-toggle="dropdown"> -->
			<!-- 						Men <span class="caret"></span> -->
			<!-- 					</button> -->
			<!-- 					<ul class="dropdown-menu ml-auto" style="list-style-type: none;"> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=homepage_1&type=view">FootWear</a></li> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=Logout&type=model">Clothing</a></li> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=Logout&type=model">Watches</a></li> -->
			<!-- 						<li style="padding: 10px;"><a -->
			<!-- 							href="fc/?page=Logout&type=model">Sports</a></li> -->
			<!-- 					</ul> -->

			<!-- 				</li> -->


			<!-- 			</div> -->
			<!-- 			<div class="col-lg-2 col-md-3 col-sm-3 col-4" -->
			<!-- 				style="padding-top: 10px;" -->
			<%-- 				style="list-style-type:none;> --%>
			<!--                      <li class="dropdown"> -->
			<!--                      <button class="btn btn-default dropdown-toggle pe-7s-user" type="button"  data-toggle="dropdown">Women -->
			<!--                         <span class="caret"></span></button> -->
			<!--                     <ul class="dropdown-menu ml-auto" > -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=homepage_1&type=view">FootWear</a></li> -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=Logout&type=model">Clothing</a></li> -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=homepage_1&type=view">Sports Wear</a></li> -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=Logout&type=model">Watches</a></li> -->
			<!--                     </ul> -->
			<!--                     </li> -->
			<!--                 </div> -->
			<%--                 <div class="col-lg-2 col-md-3 col-sm-3 col-4"style="padding-top: 10px;" style="list-style-type:none;> --%>

			<!--                      <li class="dropdown"> -->
			<!--                      <button class="btn btn-default dropdown-toggle pe-7s-user" type="button"  data-toggle="dropdown">Sports -->
			<!--                         <span class="caret"></span></button> -->
			<!--                     <ul class="dropdown-menu ml-auto" > -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=homepage_1&type=view">My Account</a></li> -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=Logout&type=model">logout</a></li> -->
			<!--                     </ul> -->

			<!--                     </li> -->

			<!--                 </div> -->
			<%--                 <div class="col-lg-2 col-md-3 col-sm-3 col-4"style="padding-top: 10px;"style="list-style-type:none;> --%>
			<!--                      <li class="dropdown"> -->
			<!--                      <button class="btn btn-default dropdown-toggle pe-7s-user" type="button"  data-toggle="dropdown">offer zone -->
			<!--                         <span class="caret"></span></button> -->
			<!--                     <ul class="dropdown-menu ml-auto" > -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=homepage_1&type=view">My Account</a></li> -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=Logout&type=model">logout</a></li> -->
			<!--                     </ul> -->
			<!--                     </li> -->
			<!--                 </div> -->
			<%--                 <div class="col-lg-2 col-md-3 col-sm-3 col-4"style="padding-top: 10px;"style="list-style-type:none;> --%>

			<!--                      <li class="dropdown"> -->
			<!--                      <button class="btn btn-default dropdown-toggle pe-7s-user" type="button"  data-toggle="dropdown">About us -->
			<!--                         <span class="caret"></span></button> -->
			<!--                     <ul class="dropdown-menu ml-auto" > -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=homepage_1&type=view">My Account</a></li> -->
			<!--                         <li style="padding: 10px;"><a href="fc/?page=Logout&type=model">logout</a></li> -->
			<!--                     </ul> -->

			<!--                     </li> -->

			<!--                 </div> -->



			<!--             </div> -->
			<!--         </div>         -->



			<c:if test="${empty user}">
				<div class="modal-body">
					<p>First Login Your Account</p>
					<form action="/account/login" method="post">
						<br> <label for="email">UserId</label> <input
							class="form-control" id="eid" onblur="loginVerify('eid', 'sid')"
							type="text" name="useremail" placeholder="userid"><span
							id="sid"></span><br> <label for="pwd">Password</label> <input
							class="form-control" id="ppid" type="password" name="password"
							placeholder="password"><br>
						<div class="form-group form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox"> Remember me
							</label>
						</div>
						<input type="submit" value="login"
							onsubmit="loginVerify('eid', 'ppid')" class="btn btn-primary">
						<a href="fc/?page=forgetpassword&type=view">forget password ?</a>
					</form>


				</div>

			</c:if>
			<c:if test="${not empty user}">


				<div class="container-fluid">
					<div class="row" style="padding-top: 20px;">
						<div class=" col-lg-4 col-sm-4 col-md-4"></div>
						<div class="col-lg-4 col-sm-4 col-md-4" style="padding-top: 20px;">
							<div style="text-align: center">
								<span class="dot"></span>
								<h1>
									<strong>Welcome ${user.username}</strong>
								</h1>
							</div>
						</div>
						<div class="col-lg-4 col-sm-4 col-md-4"></div>

					</div>
					<div class="row" style="height: 500px; background-color: #efefef">
						<div class="col-lg-3  col-md-3 col-sm-3 col-4">
							<nav
								style="height: 500px; width: 100%; background-color: #bfddfe">
								<div>
									<main>
										<div class="body_section">

											<div class="headings">
												<h2>Add your item</h2>
											</div>

											<form class="body_container">

												<div class="caption">Product Title</div>

												<div class="row">
													<input type="text" class="textbox w100">
												</div>

												<div class="caption">Product Description</div>

												<div class="row">
													<textarea rows="5" class="desc_box w100">
                        
                                            </textarea>
												</div>



												<form method="post" action="fc/?page=ImageUpload&type=model"
													enctype="multipart/form-data">
													<input type="file" name="file" /><br> <input
														class="button" type="submit" value="upload" />
												</form>
										</div>

									</main>





								</div>
							</nav>

						</div>


						<div class=" col-lg-9 col-md-9 col-sm-9 col-8">
							<nav style="height: auto; width: 100%; background-color: #eee">
								<h1
									style="color: #eee; background-color: black; text-align: center">profile
									Information</h1>
								<div style="margin-top: 20px;">
									<strong
										style="color: #3333ff; font-size: 20px; text-align: center">User
										Name: ${user.username}</strong>
								</div>
								<div style="margin-top: 20px;">
									<strong style="color: #3333ff; font-size: 20px;">Phone
										No:${user.userphone}</strong>
								</div>
								<div style="margin-top: 20px;">
									<strong style="color: #3333ff; font-size: 20px;">Email
										Id :useremail</strong>
								</div>
							</nav>
						</div>


					</div>


				</div>


				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12" style="height: 100px;"></div>
					</div>
					<div class="row"></div>
					<div class="row">
						<div class="col-md-12" style="height: 100px;"></div>
					</div>



				</div>

			</c:if>
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
			<!--     <footer id="footer">
                 <div class="footer-top">
                     <div class="container">
                         <div class="row">
                             <div class="col-lg-3 col-md-3 col-sm-3 footer-info"> <br><br>
                                 <h3>LEND-A-HAND</h3>
                                 <p> Its an e- Commerse Website created for the students where they can buy new as well as used products which are being sold by other Students</p>
                             </div>
                             <div class="col-lg-3 col-md-3 col-sm-3 footer-links"><br><br>
                                 <h4> Usefull Links</h4>
                                 <ul>
                                     <li><a href="#">Link</a></li>
                                     <li><a href="#">Link</a></li>
        
                                 </ul>
                             </div>
                             <div class="col-lg-3 col-md-3 col-sm-3 footer-contact"><br><br>
                                 <h4>Contact Us</h4>
                                 <p>
                                     Integral University<br/>
                                     Kursi Road, Lucknow<br/>
                                     India<br/>
                                     <strong>Phone: +916393545132</strong><br/>
                                     <strong>Email: contact.nafees12@gmail.com</strong><br/>
                                 </p>
        
                             </div>
                             <div class="col-lg-3 col-md-3 col-sm-3 footer-newsletter"><br><br>
                                 <h4>Our Newsletter</h4>
                                 <p>  ---------------------------------------------------------------------------------</p>
                                 <form accept="" method="post">
                                     <input type="email" name="email"><input type="submit" value="Subscribe"></form>
                             </div>
                         </div>
                     </div>
                 </div>
        
             </footer>  -->




			<!--       Account   login section          -->
</body>
</html>