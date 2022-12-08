<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
    background-image: url(HotelL.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
   }
form{
   
   border: 3px solid rgb(13, 5, 247);
   background-color:white;
   width: 780px;
   height: 420px;
   text-align: center;
    }
 div{
     font-weight:900;
     color:rgb(56, 34, 200);
    }
    h1{
      background-color: rgb(10, 10, 36);
      width: 95%;
      height: 65px;
      color: white;
      margin-top: 0%;
      padding-top: 1%;
  }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><b><h1>Hotel Management</h1></b></center>
<center>
<form method="get" action="ShowHotel.jsp">
<h2>List of Hotels:</h2>

    <jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO"/>
    <table border='3'>
        <tr>
         <th>hotelId</th>
         <th>hotelName</th>
         <th>Address1</th>
         <th>Address2</th>
         <th>city</th>
         <th>zipcode</th>
         <th>contactNo</th>
         <th> Rating</th>
         <th> Review</th>
         <th> AboutUs</th>
         <th>AddRoom</th>
        
        </tr>
      <c:forEach var="ShowHotel" items="${beanDao.showhotel()}">
          <tr>
              <td><c:out value="${ShowHotel.hotelId}"></c:out></td>
              <td><c:out value="${ShowHotel.hotelName}"/> </td>
              <td><c:out value="${ShowHotel.address1}"/> </td>
              <td><c:out value="${ShowHotel.address2}"/> </td>
              <td><c:out value="${ShowHotel.city}"/> </td>
              <td><c:out value="${ShowHotel.zipcode}"/> </td>
              <td><c:out value="${ShowHotel.contactNo}"/> </td>
              <td><c:out value="${ShowHotel.rating}"/> </td>
              <td><c:out value="${ShowHotel.review}"/> </td>
              <td><c:out value="${ShowHotel.aboutus}"/> </td>
              <td><a href="AddRoom.jsp?id=${ShowHotel.hotelId}"><input type="button" value="AddRoom"></a>
              
          </tr>
      </c:forEach>
     </table>
</form>
</center>
</body>
</html>