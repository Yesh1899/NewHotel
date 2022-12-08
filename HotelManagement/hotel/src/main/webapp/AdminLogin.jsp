<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

    <head>
        <style>
        	body{
    background-image: url(AdminLog.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 103%;
}
.formclass{
    border: 3px solid rgb(13, 5, 247);
    background-color:white;
    width: 455px;
    height: 310px;
    text-align: center;
}
div{
    font-weight:900;
    color:rgb(56, 34, 200);
}
h1{
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
<jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO" />
<center><b><h1>Hotel Management</h1></b></center>
<center>
<div class="formclass">
    <form method="post" action="AdminLogin.jsp">
        <center>
    
            <h2>Please Login:</h2> 
            
            
           AdminId:<input type="text" name="adminId"  required pattern="[0-9]+"/><br />
           </br>
       
           Password:<input type="password" name="pass" required pattern="[A-Za-z0-9]+"/><br/> 
            
            <br /> <input type="submit" value="Login" /><br/><br/>
            Create Acoount :
            <a href="AddAdmin.jsp">Register</a>
        </center>
    </form>
</div>
</center>

   <c:if test="${param.adminId != null && param.pass != null}">
        <jsp:useBean id="login" class="com.infinite.hotel.AdminDetails"/>
         <jsp:setProperty property="*" name="login" />
         <c:set var="adminId" value="${param.adminId}"  />
         <c:set var="password" value="${param.pass}"  />
         <c:set var="count" value="${beanDao.AdminLogin(adminId, password)}"/>
         <c:set var="admin" value="${admin}" scope="session"/>
         <c:if test="${count==1}">
     <center>  <a href="AddHotel.jsp"><input type =submit value= Go-for-Adding ></a>   </center>
         </c:if>
         <c:if test="${count==0}">
           <c:out value="Invalid credentials..."></c:out>
         </c:if>
    
        <center>
        </c:if>
   
</body>
</html>