<%-- 
    Document   : register
    Created on : 16-Oct-2022, 5:36:17 AM
    Author     : marce
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form action="ShoppingList" method="post">
            Username: <input type="text" name="username" value="${username}">
            <input type="hidden" name="action" value="registerName">
            <input type="submit" value="Register name">
        </form>
    </body>
</html>