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
    <title>Create User</title>
    <style>
        fieldset {
            display: inline-block;
        }

        .message {
            color: green;
        }
    </style>
</head>
<body>

<h1>Create new user</h1>

<p>
    <c:if test="${requestScope['message'] != null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>

<p>
    <a href="${pageContext.request.contextPath}/users">Back to user list</a>
</p>

<form method="post">
    <fieldset>
        <legend>User information</legend>
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td><label for="country">Country:</label></td>
                <td><input type="text" name="country" id="country"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create new user"></td>
            </tr>
        </table>
    </fieldset>

</form>

</body>
</html>
