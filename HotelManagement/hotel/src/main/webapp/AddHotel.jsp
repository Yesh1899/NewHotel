<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
    background-image: url(Hotelslisting.jfif);
    background-repeat: no-repeat;
    background-attachment: fixed;
    padding-right: 60%;
    background-size: 100% 100%;
}



form {
    border: 3px solid rgb(13, 5, 247);
    background-color: #808080;
    width: 390px;
    height: 500px;
    padding-left: 10`%;
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <center>



       <b><h1>HOTEL MANAGEMENT</h1></b>
    </center>



   <form action="AddHotel.jsp">
        <h2>Hotel Details</h2>
        <table border="3" align="left">
            <tr>
                <th>Hotel Name</th>
                <td><input type="text" name="hotelName" required
                    pattern="[A-Za-z0-9]+" /></td>
            </tr>
            <tr>



               <th>Address1</th>
                <td><input type="text" name="address1" required
                    pattern="[A-Za-z0-9]+" /></td>
            </tr>
            <tr>
                <th>Address2</th>
                <td><input type="text" name="address2" required
                    pattern="[A-Za-z0-9]+" /></td>
            </tr>
            <tr>
                <th>City</th>
                <td><input type="text" name="city" required pattern="[A-Za-z]+" />
                </td>
            </tr>
            <tr>
                <th>Zipcode</th>
                <td><input type="text" name="zipcode" required pattern="[0-9]+" />
                </td>
            </tr>
            <tr>
                <th>Contact No</th>
                <td><input type="text" name="contactNo" required
                    pattern="[0-9]+" /></td>
            </tr>
            <tr>



               <th>Rating</th>
                <td><input type="number" name="rating" required
                    pattern="[0-9]+" /></td>
            </tr>
            <tr>
                <th>Review</th>



               <td><input type="text" name="review" required
                    pattern="[A-Za-z]+" /></td>
            </tr>
            <tr>
                <th>About Us</th>
                <td><input type="text" name="aboutus" required
                    pattern="[A-Za-z]+" /></td>
            </tr>
            <tr>



               <td><input type="submit" value="Insert" /></td>
            </tr>
    </form>
    </table>



   <c:if test="${param.hotelName!= null }">
        <jsp:useBean id="dao" class="com.infinite.hotel.HotelDetailsDAO" />
        <jsp:useBean id="hotel" class="com.infinite.hotel.HotelDetails" />
        <jsp:setProperty property="*" name="hotel" />
        <c:out value="${dao.addhotel(hotel)}" />
        <jsp:forward page="ShowHotel.jsp"></jsp:forward>
    </c:if>
</body>
</html>