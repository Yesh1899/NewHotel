<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url(Pay.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.formclass {
	border: 3px solid rgb(13, 5, 247);
	background-color: white;
	width: 300px;
	height: 300px;
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
<center>
		<b><h1>HOTEL MANAGEMENT</h1></b>
	</center>
<body>
	<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO"></jsp:useBean>
	<form method="get" action="ForPayments.jsp">
	<center><h2>Payment Section</h2>
	</center>
		<center>
			Customer Id : <input type="text" name="customerid"
				value="${param.custId}" /><br />
			<br /> Billing Amount : <input type="number" name="billingAmount" required pattern="[0-9]"/><br />
			<br /> PayMode : <select name="paymode" id="dropdown">
				<option value="ONLINE">ONLINE</option>
				<option value="CASH">CASH</option>
			</select> <br />
			<br /> <input type="submit" value="Add" /><br />
			<br />
		</center>
		<c:if test="${param.paymode != null && param.billingAmount != null}">
			<jsp:useBean id="beanPayment" class="com.infinite.hotel.Payment" />
			<jsp:setProperty property="*" name="beanPayment" />
			<c:out value="${beanDao.addPayment(beanPayment)}" />
			<c:set var="pay" value="${dao.searchBilling(param.roomId)}"></c:set>
			<c:out value="${pay.billAmt}"></c:out>
		</c:if>
	</form>
</body>
</html>