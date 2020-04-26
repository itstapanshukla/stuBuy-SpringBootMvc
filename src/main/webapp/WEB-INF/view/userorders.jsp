<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>How to fetch data from database in Spring MVC</h2>

	<c:forEach var="listOfCarts" items="${listOfCarts}" varStatus="status">


		<div class="card" style="width: 100%">
			<a href="/img/details/${listOfCarts.productId}"> <img
				class="card-img-top" src="/img/display/${listOfCarts.productId}"
				alt="Card image" style="width: 40%; height: 300px;">
			</a>
			<div class="card-body  btn btn-primary btn btn-sm"
				onclick="addTo('t1.png')">
				ADD TO BAG
				<h style="color: black">$10 Red T-Shirt</h>
			</div>

		</div>

	</c:forEach>
	</table>

</body>
</html>
