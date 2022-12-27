<%--
  Created by IntelliJ IDEA.
  User: jane
  Date: 25.12.2022
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Check booking</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h1>Check new booking</h1>
<ul>
    ${requestScope.booking.id} - ${requestScope.booking.userId} - ${requestScope.booking.carId} - ${requestScope.booking.rentalStart} - ${requestScope.booking.rentalFinish} -${requestScope.booking.status} - ${requestScope.booking.comment}
</ul>

<form action="${pageContext.request.contextPath}/check_booking" method="get">
    <button type="submit" name="bookingId" value="${booking.id}">Check booking</button>
</form>
<form action="${pageContext.request.contextPath}/bookings" method="get">
    <button type="submit">Back</button>
</form>
</body>
</html>
