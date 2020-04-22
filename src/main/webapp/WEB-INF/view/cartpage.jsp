<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Navbar Dropdown Login and Signup Form with
	Social Buttons</title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/CSS/cart.css" rel="stylesheet">
<script type="text/javascript">
	// Prevent dropdown menu from closing when click inside the form
	$(document).on("click", ".navbar-right .dropdown-menu", function(e) {
		e.stopPropagation();
	});
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-expand-lg navbar-light">
		<div class="navbar-header d-flex col">
			<a class="navbar-brand" href="#"><b>stuBuy</b></a>
		</div>
		<!-- Collection of nav links, forms, and other content for toggling -->
		<form class="navbar-form form-inline">
			<div class="input-group search-box">

				<li class="nav-item"><input type="text" id="search"
					class="form-control" placeholder="Search here..."> <a
					data-toggle="dropdown"
					class=" btn btn-primary  dropdown-toggle get-started-btn mt-1 mb-1"
					href="#">Submit</a></li>

			</div>

		</form>
		<ul class="nav navbar-nav navbar-right ml-auto">
			<li class="nav-item"><a data-toggle="dropdown"
				class=" btn btn-primary  dropdown-toggle get-started-btn mt-1 mb-1"
				href="#">Login</a>
				<ul class="dropdown-menu form-wrapper">
					<li>
						<form action="" method="post">
							<p class="hint-text">Sign in with your social media account</p>
							<div class="form-group social-btn clearfix">
								<a href="#" class="btn btn-primary pull-left"><i
									class="fa fa-facebook"></i> Facebook</a> <a href="#"
									class="btn btn-info pull-right"><i class="fa fa-twitter"></i>
									Twitter</a>
							</div>
							<div class="or-seperator">
								<b>or</b>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username"
									required="required">
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="Password" required="required">
							</div>
							<input type="submit" class="btn btn-primary btn-block"
								value="Login">
							<div class="form-footer">
								<a href="#">Forgot Your password?</a>
							</div>
						</form>
					</li>
				</ul></li>
			<li class="nav-item"><a href="#" data-toggle="dropdown"
				class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Sign
					up</a>
				<ul class="dropdown-menu form-wrapper">
					<li>
						<form action="/examples/actions/confirmation.php" method="post">
							<p class="hint-text">Fill in this form to create your
								account!</p>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username"
									required="required">
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="Password" required="required">
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="Confirm Password" required="required">
							</div>
							<div class="form-group">
								<label class="checkbox-inline"><input type="checkbox"
									required="required"> I accept the <a href="#">Terms
										&amp; Conditions</a></label>
							</div>
							<input type="submit" class="btn btn-primary btn-block"
								value="Sign up">
						</form>
					</li>
				</ul></li>
		</ul>
		</div>
	</nav>
<body>
	<div class="page-header">
		<h1>
			<bold>Products</bold>
			<div style="float: right; cursor: pointer;">
				<span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span
					class="badge badge-notify my-cart-badge"></span></span>
			</div>
		</h1>
	</div>

	<button type="addNewProduct" name="addNewProduct" id="addNewProduct">Add
		New Product</button>

	<div class="row">
		<div class="col-md-3 text-center">
			<img src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/images/img_1.png" width="150px" height="150px"> <br>
			product 1 - <strong>$10</strong> <br>
			<button class="btn btn-danger my-cart-btn" data-id="1"
				data-name="product 1" data-summary="summary 1" data-price="10"
				data-quantity="1" data-image="images/img_1.png">Add to Cart</button>
			<a href="#" class="btn btn-info">Details</a>
		</div>

		<div class="col-md-3 text-center">
			<img src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/images/img_2.png" width="150px" height="150px"> <br>
			product 2 - <strong>$20</strong> <br>
			<button class="btn btn-danger my-cart-btn" data-id="2"
				data-name="product 2" data-summary="summary 2" data-price="20"
				data-quantity="1" data-image="images/img_2.png">Add to Cart</button>
			<a href="#" class="btn btn-info">Details</a>
		</div>

		<div class="col-md-3 text-center">
			<img src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/images/img_3.png" width="150px" height="150px"> <br>
			product 3 - <strong>$30</strong> <br>
			<button class="btn btn-danger my-cart-btn" data-id="3"
				data-name="product 3" data-summary="summary 3" data-price="30"
				data-quantity="1" data-image="images/img_3.png">Add to Cart</button>
			<a href="#" class="btn btn-info">Details</a>
		</div>

		<div class="col-md-3 text-center">
			<img src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/images/img_4.png" width="150px" height="150px"> <br>
			product 4 - <strong>$40</strong> <br>
			<button class="btn btn-danger my-cart-btn" data-id="4"
				data-name="product 4" data-summary="summary 4" data-price="40"
				data-quantity="1" data-image="images/img_4.png">Add to Cart</button>
			<a href="#" class="btn btn-info">Details</a>
		</div>

		<div class="col-md-3 text-center">
			<img src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/images/img_5.png" width="150px" height="150px"> <br>
			product 5 - <strong>$50</strong> <br>
			<button class="btn btn-danger my-cart-btn" data-id="5"
				data-name="product 5" data-summary="summary 5" data-price="50"
				data-quantity="1" data-image="images/img_5.png">Add to Cart</button>
			<a href="#" class="btn btn-info">Details</a>
		</div>

	</div>


	<script src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/js/jquery-2.2.3.min.js"></script>
	<script type='text/javascript' src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/js/bootstrap.min.js"></script>
	<script type='text/javascript' src="/stuBuy-SpringBootMvc/src/main/webapp/WEB-INF/js/jquery.mycart.js"></script>
	<script type="text/javascript">
		$(function() {

			var goToCartIcon = function($addTocartBtn) {
				var $cartIcon = $(".my-cart-icon");
				var $image = $(
						'<img width="30px" height="30px" src="'
								+ $addTocartBtn.data("image") + '"/>').css({
					"position" : "fixed",
					"z-index" : "999"
				});
				$addTocartBtn.prepend($image);
				var position = $cartIcon.position();
				$image.animate({
					top : position.top,
					left : position.left
				}, 500, "linear", function() {
					$image.remove();
				});
			}

			$('.my-cart-btn')
					.myCart(
							{
								currencySymbol : '$',
								classCartIcon : 'my-cart-icon',
								classCartBadge : 'my-cart-badge',
								classProductQuantity : 'my-product-quantity',
								classProductRemove : 'my-product-remove',
								classCheckoutCart : 'my-cart-checkout',
								affixCartIcon : true,
								showCheckoutModal : true,
								numberOfDecimals : 2,
								cartItems : [ {
									id : 1,
									name : 'product 1',
									summary : 'summary 1',
									price : 10,
									quantity : 1,
									image : 'images/img_1.png'
								}, {
									id : 2,
									name : 'product 2',
									summary : 'summary 2',
									price : 20,
									quantity : 2,
									image : 'images/img_2.png'
								}, {
									id : 3,
									name : 'product 3',
									summary : 'summary 3',
									price : 30,
									quantity : 1,
									image : 'images/img_3.png'
								} ],
								clickOnAddToCart : function($addTocart) {
									goToCartIcon($addTocart);
								},
								afterAddOnCart : function(products, totalPrice,
										totalQuantity) {
									console.log("afterAddOnCart", products,
											totalPrice, totalQuantity);
								},
								clickOnCartIcon : function($cartIcon, products,
										totalPrice, totalQuantity) {
									console
											.log("cart icon clicked",
													$cartIcon, products,
													totalPrice, totalQuantity);
								},
								checkoutCart : function(products, totalPrice,
										totalQuantity) {
									var checkoutString = "Total Price: "
											+ totalPrice + "\nTotal Quantity: "
											+ totalQuantity;
									checkoutString += "\n\n id \t name \t summary \t price \t quantity \t image path";
									$.each(products,
											function() {
												checkoutString += ("\n "
														+ this.id + " \t "
														+ this.name + " \t "
														+ this.summary + " \t "
														+ this.price + " \t "
														+ this.quantity
														+ " \t " + this.image);
											});
									alert(checkoutString)
									console.log("checking out", products,
											totalPrice, totalQuantity);
								},
								getDiscountPrice : function(products,
										totalPrice, totalQuantity) {
									console
											.log("calculating discount",
													products, totalPrice,
													totalQuantity);
									return totalPrice * 0.5;
								}
							});

			$("#addNewProduct")
					.click(
							function(event) {
								var currentElementNo = $(".row").children().length + 1;
								$(".row")
										.append(
												'<div class="col-md-3 text-center"><img src="images/img_empty.png" width="150px" height="150px"><br>product '
														+ currentElementNo
														+ ' - <strong>$'
														+ currentElementNo
														+ '</strong><br><button class="btn btn-danger my-cart-btn" data-id="' + currentElementNo + '" data-name="product ' + currentElementNo + '" data-summary="summary ' + currentElementNo + '" data-price="' + currentElementNo + '" data-quantity="1" data-image="images/img_empty.png">Add to Cart</button><a href="#" class="btn btn-info">Details</a></div>')
							});
		});
	</script>

</body>


</body>
</html>
