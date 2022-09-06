<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hung
  Date: 9/6/2022
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <style>
        table, tr, td {
            padding: 5px;
            border-collapse: collapse;
        }

        a {
            margin: 5px;
            text-decoration: none;
        }
    </style>
</head>
<body>

<h1>User List</h1>

<p>
    <a href="${pageContext.request.contextPath}/users?action=create">Create new user</a>
</p>

<form method="post" action="${pageContext.request.contextPath}/users?action=search">
    Search by country
    <label for="search">
        <input type="text" name="search" id="search">
    </label>
    <input type="submit" value="Search">
</form>

<a href="${pageContext.request.contextPath}/users">
    <button>Origin list</button>
</a>
<a href="${pageContext.request.contextPath}/users?action=sort">
    <button>Sort by name</button>
</a>

<br><br>

<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Country</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${requestScope['userList']}" var="user">
        <tr>
            <td>${user.getName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCountry()}</td>
            <td><a href="${pageContext.request.contextPath}/users?action=edit&id=${user.getId()}">
                <button>Edit</button>
            </a></td>
            <td><a href="${pageContext.request.contextPath}/users?action=delete&id=${user.getId()}">
                <button>Delete</button>
            </a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
