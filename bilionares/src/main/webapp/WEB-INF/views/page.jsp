<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="demo" value="/resources/demo" />
<spring:url var="fonts" value="/resources/fonts" />
<spring:url var="images" value="/resources/images" />
<spring:url var="js" value="/resources/js" />
<spring:url var="scss" value="/resources/scss" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<script>
window.menu='${title}';
</script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Billionares -${title}</title>
<!-- Favicon -->
<link href="${images}/brand/favicon.png" rel="icon" type="image/png">
<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<!-- Icons -->
<link href="${js}/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
<link href="${js}/plugins/@fortawesome/fontawesome-free/css/all.min.css"
	rel="stylesheet" />
<!-- CSS Files -->
<link href="${css}/argon-dashboard.css?v=1.1.0" rel="stylesheet" />
</head>

<body class="">

	<!-- side bar goes here -->
	<%@include file="./shared/sidebar.jsp"%>

	<div class="main-content">
		<!-- Navbar -->
		<%@include file="./shared/navbar.jsp"%>
		<!-- End Navbar -->
		<!-- Header -->
		<c:if test="${userClickHome== true }">
			<%@include file="./shared/header.jsp"%>
		</c:if>
		<c:if test="${userClickProfile== true }">
			<%@include file="headerpro.jsp"%>
		</c:if>
		<c:if test="${userClickGuidelines== true }">
			<%@include file="headerguide.jsp"%>
		</c:if>



		<div class="container-fluid mt-4">

			<c:if test="${userClickHome== true }">
				<%@include file="home.jsp"%>
			</c:if>
			<c:if test="${userClickProfile== true }">
				<%@include file="profile.jsp"%>
			</c:if>
			<c:if test="${userClickGuidelines== true }">
				<%@include file="guidelines.jsp"%>
			</c:if>
			<!-- Footer -->

			<%@include file="./shared/footer.jsp"%>

		</div>
	</div>
	<!--   Core   -->
	<script src="${js}/plugins/jquery/dist/jquery.min.js"></script>
	<script src="${js}/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!--   Optional JS   -->
	<script src="${js}/plugins/chart.js/dist/Chart.min.js"></script>
	<script src="${js}/plugins/chart.js/dist/Chart.extension.js"></script>
	<!--   Argon JS   -->
	<script src="${js}/argon-dashboard.min.js?v=1.1.0"></script>
	<script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
	<script>
		window.TrackJS && TrackJS.install({
			token : "ee6fab19c5a04ac1a32a645abde4613a",
			application : "argon-dashboard-free"
		});
	</script>
</body>

</html>