<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
	background-image: url(AdminReg.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	padding-left: 60%;
	background-size: 100% 100%;
}

form {
	border: 3px solid white;
	background-color: white;
	width: 390px;
	height: 500px;
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
</head>
<body>
	<center>
		<h1>HOTEL MANAGEMENT</h1>
	</center>
	<center>
		<form method="get" action="AddAdmin.jsp">

			<h2>Admin Registration</h2>
			Enter AdminId : <input type="number" name="adminId"  required pattern="[0-9]+"/><br />
			<br /> Enter password : <input type="text" name="pass" required pattern="[A-Za-z0-9]+"/><br />
			<br /> Enter First Name : <input type="text" name="firstName" required pattern="[A-Za-z]+"/><br />
			<br /> Enter last Name : <input type="text" name="lastName" required pattern="[A-Za-z]+"/><br />
			<br /> Enter Contact No: <input type="text" name="contactNo" required pattern="[0-9]+" /><br />
			<br /> Enter Id Proof : <input type="text" name="idProof" required pattern="[A-Za-z]+"/><br />
			<br /> Enter City : <input type="text" name="city" required pattern="[A-Za-z]+"/><br />
			<br /> <input type="submit" value="Insert" /><br />
			<br />

		</form>
	</center>
	<c:if test="${param.adminId != null}">
		<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO" />
		<jsp:useBean id="admin" class="com.infinite.hotel.AdminDetails" />
		<jsp:setProperty property="*" name="admin" />
		<c:out value="${beanDao.addAdmin(admin)}" />
		<jsp:forward page="AdminLogin.jsp"></jsp:forward>
	</c:if>
</body>
</html>