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
<form method="get" action="ShowBilling.jsp">
    <jsp:useBean id="beanDao" class="com.infinite.hotel.HotelDetailsDAO"/>
    
    
    <table border='3'>
        <tr>
         <th>BookId</th>
         <th>RoomId</th>
         <th>CustomerId</th>
         <th>NoOfDays</th>
         <th>BillAmt</th>
         <th>Payment</th>
         

        </tr>
      <c:forEach var="ShowBilling" items="${beanDao.showbillings(billing)}">
          <tr>
              <td><c:out value="${ShowBilling.bookId}"></c:out></td>
              <td><c:out value="${ShowBilling.roomId}"/> </td>
              <td><c:out value="${ShowBilling.customerId}"/> </td>
              <td><c:out value="${ShowBilling.noOfDays}"/> </td>
              <td><c:out value="${ShowBilling.billAmt}"/> </td>
              <td><a href="ForPayments.jsp?custId=${ShowBilling.customerId}&bill=${ShowBilling.billAmt}"><input type="button" value="PayBill"></a></td>
              
              
              </tr>
          </c:forEach>
          </table>
          </form>
              
              



</body>
</html>