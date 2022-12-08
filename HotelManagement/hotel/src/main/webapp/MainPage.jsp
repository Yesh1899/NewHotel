<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>
body {
	background-image: url(MainPage.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
#th1{
    padding-top: 15%;
    padding-left: 28%;
}
#th2{
    padding-top: 15%;
    padding-left: 42%;
}
    .formclass2{
        border: 3px solid white;
   background-color:white;
   width: 390px;
   height: 280px;
   text-align: center;


    }
    .formclass1{
        border: 3px solid white;
   background-color:white;
   width: 390px;
   height: 280px;
   text-align: center;

    }
</style>
<title>Insert title here</title>
</head>
<body>
<center><h1>HOTEL MANAGEMENT </h1></center>
<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO" />
	<table>
		<th id="th1">
			<div class="formclass2">
				<form method="post" action="MainPage.jsp">
					<center>
						<h2>Customer Login:</h2>
						UserId:<input type="text" name="userId" /><br /> </br> 
						Password:<input
							type="password" name="pass" /><br /> <br /> <input type="submit"
							value="Login" /><br />
						<br /> Create Account : <a href="AddCustomer.jsp">Register</a>
					</center>
				</form>
			</div>
		</th>
		 <c:if test="${param.userId != null && param.pass != null}">
        <jsp:useBean id="login1" class="com.infinite.hotel.CustomerDetails"/>
         <jsp:setProperty property="*" name="login1" />
         <c:set var="userId" value="${param.userId}"  />
         <c:set var="password" value="${param.pass}"  />
         <c:set var="count" value="${beanDao.UserLogin(userId, password)}"/>
         <c:set var="user" value="${user}" scope="session"/>
         <c:if test="${count==1}">
     <center>  <a href="CustomerCheck.jsp"><input type =submit value= Hotels-list ></a>   </center>
         </c:if>
         <c:if test="${count==0}">
           <c:out value="Invalid credentials..."></c:out>
         </c:if>
        <center>
        </c:if>
   
		<th id="th2">

			<div class="formclass1">
				<form method="post" action="MainPage.jsp">
					<center>

						<h2>Admin Login:</h2>
						AdminId:<input type="text" name="adminId" /><br /> </br> 
						Password:<input
							type="password" name="passwd" /><br /> <br /> <input type="submit"
							value="Login" /><br />
						<br /> Create Acoount : <a href="AddAdmin.jsp">Register</a>
					</center>
				</form>
			</div>
		
		   <c:if test="${param.adminId != null && param.passwd != null}">
        <jsp:useBean id="login2" class="com.infinite.hotel.AdminDetails"/>
         <jsp:setProperty property="*" name="login2" />
         <c:set var="adminId" value="${param.adminId}"  />
         <c:set var="password" value="${param.passwd}"  />
         <c:set var="countt" value="${beanDao.AdminLogin(adminId, password)}"/>
         <c:set var="admin" value="${admin}" scope="session"/>
         <c:if test="${countt==1}">
     <center>  <a href="AddHotel.jsp"><input type =submit value= Go-for-Adding ></a>   </center>
         </c:if>
         <c:if test="${countt==0}">
           <c:out value="Invalid credentials..."></c:out>
         </c:if>
    
        <center>
        </c:if>
   </th>
		
	</table>
</body>
</html>