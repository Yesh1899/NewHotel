<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
	background-image: url(Bills.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	padding-left: 60%;
	background-size: 100% 100%;
}

form {
	border: 3px solid rgb(13, 5, 247);
	background-color:#40E0D0;
	width: 500px;
	height: 70px;
	padding-top: 10%;
	padding-bottom: 10%;
	
	text-align: center;
}

div {
	font-weight: 900;
	color: rgb(56, 34, 200);
}

h1 {
	background-color: rgb(10, 10, 36);
	width: 70%;
	height: 55px;
	color: white;
	margin-top: 0%;
	padding-top: 1%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="com.infinite.hotel.HotelDetailsDAO" />
	<center><b><h1>Hotel Management</h1></b></center>
	
	<form action="Billing.jsp" method="get" style="text-align: center">
		Customer Id: <select name="customerId">
			<c:forEach var="rid" items="${dao.showCust()}">
				<option value="${rid}">
					<c:out value="${rid}" />
				</option>
			</c:forEach>
		</select><br />
		<br /> <input type="submit" value="Submit" /><br />
		<br />
	</form>


	<c:if test="${param.customerId!= null }">
		<form action="Billing.jsp" method="get" style="text-align: center">
			Customer Id: <input type="text" name="roomId"
				value="${param.customerId}" readonly/><br />
			<br /> Book Id: <input type="text" name="bookId" /><br />
			<br /> <input type="submit" value="Submit" /><br />
			<br />
		</form>
	</c:if>

	<c:if test="${param.bookId != null }">
		<c:set var="id" value="${param.bookId }" />
		<c:out value="${dao.billingRoom(id)}" />
		<jsp:forward page="ForPayments.jsp"></jsp:forward>
	</c:if>
</body>
</html>