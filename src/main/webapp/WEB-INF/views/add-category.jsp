<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Category</title>
    <style>
        body { font-family: Arial; background-color: #f0f2f5; padding: 30px; }
        form { width: 50%; margin: auto; background: white; padding: 30px; box-shadow: 0 0 10px rgba(0,0,0,0.1); border-radius: 8px; }
        h2 { text-align: center; color: #333; }
        label { display: block; margin-top: 15px; font-weight: bold; }
        input[type="text"] {
            width: 100%; padding: 10px; margin-top: 5px; border: 1px solid #ccc; border-radius: 4px;
        }
        input[type="submit"] {
            margin-top: 20px; background-color: #007bff; color: white; border: none; padding: 10px 15px; border-radius: 5px; cursor: pointer;
        }
        input[type="submit"]:hover { background-color: #0056b3; }
    </style>
</head>
<body>

<h2>Add New Category</h2>

<form action="${pageContext.request.contextPath}/categories/save" method="post">
    <label>Category Name:</label>
    <input type="text" name="categoryName" required />

    <input type="submit" value="Save Category" />
</form>

</body>
</html>
