<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url(AddCus.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 120%;
}

form {
	border: 3px solid rgb(13, 5, 247);
	background-color:#B0E0E6;
	width: 700px;
	height: 450px;
	padding-top:5.5%;
	text-align: center;
}

div {
	font-weight: 900;
	color: rgb(56, 34, 200);
}

h1 {
	background-color: rgb(10, 10, 36);
	width: 100%;
	height: 50px;
	color: white;
	margin-top: 0%;
	padding-top: 1%;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: violet;">
	<center>
		<b><h1>HOTEL MANAGEMENT</h1></b>
	</center>
	<center>
		<form method="get" action="AddCustomer.jsp">
			<center>

				<h2>Visitor Registration</h2>
				Enter UserId : <input type="number" name="userId" required pattern="[0-9]+"/><br />
				<br /> Enter password : <input type="text" name="pass" required/><br />
				<br /> Enter First Name : <input type="text" name="firstName" required pattern="[A-Za-z\s]+"/><br />
				<br /> Enter last Name : <input type="text" name="lastName" required pattern="[A-Za-z\s]+"/><br />
				<br /> Enter Contact No: <input type="text" name="contactNo" required pattern="[0-9]+"/><br />
				<br /> Enter Id Proof : <input type="text" name="idProof" required pattern="[A-Za-z]+"/><br />
				<br /> Enter City : <input type="text" name="city" required pattern="[A-Za-z]+"/><br />
				<br /> <input type="submit" value="Insert" /><br />
				<br />
		</form>
	</center>
	<c:if test="${param.userId != null}">
		<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO" />
		<jsp:useBean id="customer" class="com.infinite.hotel.CustomerDetails" />

		<jsp:setProperty property="*" name="customer" />
		<c:out value="${beanDao.addCustomer(customer)}" />
		<jsp:forward page="CustomerLogin.jsp"></jsp:forward>
	</c:if>

</body>
</html>