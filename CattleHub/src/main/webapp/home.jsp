<%@ page import="java.sql.*, javax.servlet.http.*, javax.servlet.*" %>
<%
  if (session.getAttribute("userEmail") == null) {
    response.sendRedirect("login.jsp"); // Redirect to login if no session
  }
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Header</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section class="hero">
		<div class="hero-content">
			<h1>WELCOME TO CATTLE HUB</h1>
			<p>Where you can find the best cattle products</p>
			<a href="product.jsp">
				<button class="productbtn">View Product</button>
			</a>
		</div>
	</section>

	<section class="what" id="about">

		<h1>What We Do ?</h1>

		<div class="container">

			<div class="what-content">
				<h2>Our Vision</h2>
				<p>We aim to revolutionize cattle farming by promoting
					sustainable and ethical practices.</p>

				<h2>Our Mission</h2>
				<p>To provide high-quality cattle products while ensuring the
					well-being of livestock.</p>

				<h2>Our Aim</h2>
				<p>To bridge the gap between farmers and consumers with
					transparency and quality assurance.</p>
			</div>
			<div class="what-image">
				<img src="./img/vision.jpg" alt="Cattle Farming">
			</div>
		</div>
	</section>
	<section class="cta">
		<div class="cta-content">
			<h2>Join the Future of Cattle Farming</h2>
			<p>Explore our high-quality cattle products and experience
				sustainable farming with us.</p>
			<a href="./product.jsp" class="btn">View Products</a>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>