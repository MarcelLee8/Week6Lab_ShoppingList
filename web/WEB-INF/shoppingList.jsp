<%-- 
    Document   : shoppingList
    Created on : 16-Oct-2022, 5:40:27 AM
    Author     : marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username} <a href="ShoppingList?action=logout">Logout</a></p>
        <h2>List</h2>
        <form method="post">
            Add item: <input type="text" name="item"> <input type="submit" value="Add">
            <input type="hidden" name="action" value="addItems">
        </form>
        <form method="post">
            <ul>
                <c:forEach items="${items}" var="item" varStatus="index">
                    <input type="radio" name="container" value="${index.count - 1}"><c:out value="${item}"/><br>
                </c:forEach>
            </ul>
            <input type="submit" value="Delete">
            <input type="hidden" name="action" value="deleteItems">
        </form>
    </body>
</html>