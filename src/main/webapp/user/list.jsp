<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    <title>Boosting Service Management</title>
    <script src="https://kit.fontawesome.com/9fdc738eaf.js" crossorigin="anonymous"></script>
</head>
<body>
<center>
    <h1>Boosting Service Management</h1>
    <h2>
        <a href="/users?action=create" class="btn btn-info">ADD NEW USER</a>
    </h2>
</center>
<div align="center" class="container">
    <table class="table table-bordered table-dark" >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Rank</th>
            <th>Goal</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.rank}"/></td>
                <td><c:out value="${user.goal}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}"><i class="fas fa-pen-square"></i></a>
                    <a href="/users?action=delete&id=${user.id}"><i class="fas fa-backspace"></i></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>