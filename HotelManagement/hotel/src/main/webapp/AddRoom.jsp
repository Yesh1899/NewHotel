<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
    background-image: url(Hotelslisting.jfif);
    background-repeat: no-repeat;
    background-attachment: fixed;
    padding-right: 60%;
    background-size: 100% 100%;
   }
form{ 
   border: 3px solid #808080;
   background-color:#808080;
   width: 390px;
   height: 250px;
   text-align: center;
    }
 .hotel{
     font-weight:900;
     color:Gold;
      width: 390px;
   height: 150px;
   padding-top: 20%;
    }
    h1{
      background-color: rgb(10, 10, 36);
      width: 100%;
      height: 70px;
      color: white;
      margin-top: 0%;
      padding-top: 1%;
  }
</style>

</head>
<center>
		<b><h1>HOTEL MANAGEMENT</h1></b>
	</center>
  <center>
  <div class="hotel">
<form  method="get" action="AddRoom.jsp" >
<h2>Room Design</h2>
<table border="3" align="center"  >
<tr>
<th> Hotel Id  </th>

<td> <input type="text" name="hotelId" value="${param.id}" readonly /> </td>
</tr>


<tr>
<th> Room Type </th>

<td> <input type="text" name="type"  required/> </td>
</tr>

<tr>
<th> Costperday</th>
<td> <input type="number" name="costperday" required pattern="[0-9]+" /></td>
</tr>
<tr>
<th> Status </th>
<td>
<select name="status">
	<option value="AVAILABLE">AVAILABLE</option>
	<option value="BOOKED">BOOKED</option>
</select>
</td>
</tr> 
<tr>
<td>
<input type="Submit"  value="AddRoom" />
</td>
</tr>
</table>
</form>
</div>
/<center>
<c:if test="${param.type!=null && param.status!=null && param.costperday!=null}">
<jsp:useBean id="beanRoom" class="com.infinite.hotel.Room" />
<jsp:setProperty property="*" name="beanRoom"/>
<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO"/>
<c:out value="${beanDao.addroom(beanRoom)}"/>
<jsp:forward page="AdminRoom.jsp"></jsp:forward>
</c:if>
</body>
</html>