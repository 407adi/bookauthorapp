<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Category List</title>
    <style>
        body { font-family: Arial; background-color: #f0f2f5; padding: 30px; }
        h2 { text-align: center; color: #333; }
        table { width: 60%; margin: auto; border-collapse: collapse; background: white; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        th, td { padding: 12px; border: 1px solid #ccc; text-align: center; }
        th { background-color: #17a2b8; color: white; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        a.button { text-decoration: none; background-color: #007bff; color: white; padding: 10px 15px; border-radius: 5px; display: inline-block; margin-top: 20px; }
        a.button:hover { background-color: #0069d9; }
        .center { text-align: center; }
    </style>
</head>
<body>

<h2>📂 Category List</h2>

<table>
    <tr>
        <th>Category ID</th>
        <th>Category Name</th>
    </tr>
    <c:forEach var="category" items="${categories}">
        <tr>
            <td>${category.categoryId}</td>
            <td>${category.categoryName}</td>
        </tr>
    </c:forEach>
</table>

<div class="center">
    <a class="button" href="${pageContext.request.contextPath}/categories/add">➕ Add Category</a>
</div>

</body>
</html>

