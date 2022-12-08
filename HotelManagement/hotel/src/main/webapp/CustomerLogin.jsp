<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

    <head>
        <style>
        	body{
    background-image: url(CusLog.png);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
}
.formclass{
    border: 3px solid rgb(13, 5, 247);
    background-color:white;
    width: 400px;
    height: 470px;
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
	    <form method="post" action="CustomerLogin.jsp">
	        <center>
	    
	            <h2>Customer Login:</h2> 
	            
	            
	           UserId:<input type="text" name="userId"  required pattern="[0-9]+"/><br />
	           </br>
	       
	           Password:<input type="password" name="pass" required pattern="[A-Za-z0-9]+"/><br/> 
	            
	            <br /> <input type="submit" value="Login" /><br/><br/>
	            Create Account :
	            <a href="AddCustomer.jsp">Register</a>
	        </center>
	    </form>
	</div>
</center>

   <c:if test="${param.userId != null && param.pass != null}">
        <jsp:useBean id="login" class="com.infinite.hotel.CustomerDetails"/>
         <jsp:setProperty property="*" name="login" />
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
   
</body>
</html>