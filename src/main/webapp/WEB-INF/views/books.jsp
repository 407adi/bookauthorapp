<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Books List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .nav {
            margin-bottom: 20px;
        }
        .nav a {
            text-decoration: none;
            color: #007bff;
            margin-right: 20px;
            font-weight: bold;
        }
        .nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="nav">
    <a href="/">Home</a>
    <a href="/books/add">Add Book</a>
    <a href="/authors">View Authors</a>
</div>

<h1>Books List</h1>

<table>
    <tr>
        <th>Title</th>
        <th>Author ID</th>
        <th>Category ID</th>
        <th>Published Date</th>
        <th>ISBN</th>
    </tr>
    <c:forEach var="book" items="${books}"> <!-- Updated from bookList to books -->
        <tr>
            <td>${book.title}</td>
            <td>${book.author.id}</td> <!-- Assuming you want author ID, update as per your actual model -->
            <td>${book.category.id}</td> <!-- Assuming you want category ID, update as per your actual model -->
            <td>${book.publishedDate}</td>
            <td>${book.isbn}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
