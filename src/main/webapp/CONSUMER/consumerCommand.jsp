<%--
  Created by IntelliJ IDEA.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../bootstrap.jsp" />
</head>
<body>

<table class="table table-secondary table-striped">
    <h1>Shopping Bag</h1>
    <tr>
        <th>NAME</th>
        <th>CCATEGORY</th>
        <th>PRICE</th>
        <th>EXPIRATION DATE</th>
        <th>COMMANDE DATE</th>
        <th>COMMANDE NUMBER</th>
        <th>EMAIL - TRADER</th>
        <th>COUNTRY</th>
        <th>CITY</th>
        <th>POST CODE</th>
        <th>STREET </th>

    </tr>
    <c:forEach items="${commandDetails}" var="buy">
        <tr>
            <td><center>${buy.produce.name}</center></td>
            <td><center>${buy.produce.category}</center></td>
            <td><center>${buy.produce.price}</center></td>
            <td><center>${buy.produce.expirationDate}</center></td>

            <td><center>${buy.user.firstName}</center></td>
            <td><center>${buy.user.lastName}</center></td>
            <td><center>${buy.user.email}</center></td>
            <td><center>${buy.user.country}</center></td>
            <td><center>${buy.user.city}</center></td>
            <td><center>${buy.user.postCode}</center></td>
            <td><center>${buy.user.street}</center></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
