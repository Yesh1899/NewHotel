<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO" />
<form action="SearchHotel.jsp" method="get" style="text-align: center">
         <center>
            Hotel Id :
            <input type="text" name="hotelId" /> <br/><br/>
            <input type="submit" value="SearchHotel" />
        </center>
    <br/><br/></form>
<c:if test="${param.hotelId !=null}">
    <c:set var="hotelId" value="${param.hotelId}"/>
        <c:set var="hotel" value="${beanDao.searchhotel(hotelId)}"/>
                Hotel Id : <b>
            <c:out value="${hotel.hotelId}"/></b> <br/>
        Hotel Name : <b>
            <c:out value="${hotel.hotelName}"/></b> <br/>
        Address 1 : <b>
            <c:out value="${hotel.address1}"/></b> <br/>
            Address 2 : <b>
            <c:out value="${hotel.address2}"/></b> <br/>
            City : <b>
            <c:out value="${hotel.city}"/></b> <br/>
            ZipCode : <b>
            <c:out value="${hotel.zipcode}"/></b> <br/>
        Contact No : <b>
            <c:out value="${hotel.contactNo}"/></b> <br/>
        Rating : <b>
            <c:out value="${hotel.rating}"/></b> <br/>
            Review : <b>
            <c:out value="${hotel.review}"/></b> <br/>
            About Us : <b>
            <c:out value="${hotel.aboutus}"/></b> <br/>
    </c:if>
   
</body>