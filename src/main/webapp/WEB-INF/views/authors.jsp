<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Author List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
            background-color: #f8f9fa;
        }
        h2 {
            text-align: center;
            color: #343a40;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 15px;
            border: 1px solid #dee2e6;
            text-align: center;
        }
        th {
            background-color: #6c757d;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .center {
            text-align: center;
        }
        a.button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #17a2b8;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        a.button:hover {
            background-color: #138496;
        }
    </style>
</head>
<body>

<h2>👨‍💼 Author List</h2>

<table>
    <tr>
        <th>Author ID</th>
        <th>Name</th>
        <th>Birthdate</th>
    </tr>
    <c:forEach var="author" items="${authors}">
        <tr>
            <td>${author.authorId}</td>
            <td>${author.name}</td>
            <td>${author.birthdate}</td>
        </tr>
    </c:forEach>
</table>

<div class="center">
    <a class="button" href="${pageContext.request.contextPath}/authors/add">➕ Add Author</a>
</div>

</body>
</html>
