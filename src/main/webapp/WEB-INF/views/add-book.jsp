<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
<h2>Add New Book</h2>

<form action="/books/save" method="post">
    Title: <input type="text" name="title" required /><br/>

    Author:
    <select name="author.authorID">
        <c:forEach var="author" items="${authors}">
            <option value="${author.authorID}">${author.name}</option>
        </c:forEach>
    </select><br/>

    Category:
    <select name="category.categoryID">
        <c:forEach var="category" items="${categories}">
            <option value="${category.categoryID}">${category.categoryName}</option>
        </c:forEach>
    </select><br/>

    Published Date: <input type="date" name="publishedDate" /><br/>
    ISBN: <input type="text" name="isbn" /><br/>

    <input type="submit" value="Save Book" />
</form>

<a href="/books">Back to Book List</a>
</body>
</html>

