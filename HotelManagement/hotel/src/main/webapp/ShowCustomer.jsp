<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO"/>
<table border ="3" align ="center"/>
<tr>

<th>UserId</th>
<th>password</th>
<th>CustomerId</th>
<th>First Name</th>
<th>First Name</th>
<th>Contact No</th>
<th>ID Proof</th>
<th>City</th>

</tr>
<c:forEach var="customer" items="${beanDao.CustomerShow()}">
<tr>
<td>${customer.userId}</td>
<td>${customer.pass}</td>
<td>${customer.customerId}</td>
<td>${customer.firstName}</td>
<td>${customer.lastName}</td>
<td>${customer.contactNo}</td>
<td>${customer.idProof}</td>
<td>${customer.city}</td>

</tr>




</c:forEach>



</body>
</html>