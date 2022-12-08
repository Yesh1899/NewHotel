<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image: url(RoomBook.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

form {
	border: 3px solid rgb(13, 5, 247);
	background-color: white;
	width: 390px;
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
<body>
	<center>
		<b><h1>HOTEL MANAGEMENT</h1></b>
	</center>

	<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO" />
	<center>
		<form method="get" action="RoomBooking.jsp">
			<h2>Book Your Room Here!</h2>
			<center>
				Enter Room Id : <input type="text" name="roomId"
					value="${param.roomid}" readonly /><br /> <br /> Enter
				CustomerId : <input type="text" name="customerId" /><br />
				<c:set var="date" value="${beanDao.cDate()}"></c:set>
				<br /> Enter ChkInDate : <input type="date" name="chkinDate"
					min="${date}" /><br /> <br /> Enter ChkOutDate : <input
					type="date" name="chkoutDate" /><br /> <br /> Enter HotelId : <input
					type="text" name="hotelId" value="${param.id}" readonly /><br />
				<br /> <input type="submit" value="Book" />
			</center>
	</center>
	<c:set var="name" value="${param.roomId}" />
	Your Day begins From:
	<c:out value="${param.chkinDate}"></c:out>
	<br />
	<br />
	<c:if test="${param.hotelId!= null}">
		<jsp:useBean id="beanBook" class="com.infinite.hotel.RoomBooking" />
		<jsp:setProperty property="roomId" name="beanBook" />
		<jsp:setProperty property="customerId" name="beanBook" />
		<fmt:parseDate value="${param.chkinDate}" pattern="yyyy-MM-dd"
			var="cdate1" />
		<c:set var="sqlDate1" value="${beanDao.convertDate(cdate1)}" />
		<fmt:parseDate value="${param.chkoutDate}" pattern="yyyy-MM-dd"
			var="cdate2" />
		<c:set var="sqlDate2" value="${beanDao.convertDate(cdate2)}" />
		<jsp:setProperty property="chkinDate" name="beanBook"
			value="${sqlDate1}" />
		<jsp:setProperty property="chkoutDate" name="beanBook"
			value="${sqlDate2}" />
		<jsp:setProperty property="hotelId" name="beanBook" />
		<c:out value="${beanDao.bookingRoom(beanBook)}"></c:out>
		<br />
		<br />
		For Billings:
	<a href="Billing.jsp">Click Here</a>
	   Back to HomePage :
            <a href="MainPage.jsp">Click Here!</a>
	</c:if>
	</form>
</body>
</html>