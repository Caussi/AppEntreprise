<%--
  Created by IntelliJ IDEA.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../bootstrap.jsp" />
</head>
<body>

    <H1>Consumer</H1>


            <a type="button" class="btn btn-secondary" href="editUser">UPDATE PROFIL</a>
            <a type="button" class="btn btn-secondary"href="ShoppingBagWaiting">Bag List Loading</a>
            <a type="button"  class="btn btn-secondary" href="consumerCommandList">Bag List Buy</a>

<br>
    <h2>LIST PRODUCE</h2>


    <table class="table table-secondary table-striped">
        <tr>
            <th>ID</th>
            <th>EMAIL</th>
            <th>CATEGORY</th>
            <th>PRICE</th>
            <th>EXPIRATION DATE</th>
            <th>ACTIONS</th>
        </tr>
        <c:forEach items="${produces}" var="t">
            <tr>
                <td>${t.id}</td>
                <td>${t.name}</td>
                <td>${t.category}</td>
                <td>${t.price}</td>
                <td>${t.expirationDate}</td>
                <td>
                    <a href="addShoppingBag?id=${t.id}">Reservation</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
