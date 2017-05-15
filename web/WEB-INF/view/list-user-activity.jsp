<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/14/2017
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Activities</title>
</head>
<body>
<h1>View User Activity</h1>
<form action="/admin/getUserActivity" method="post">
    Enter the user's ID: <input type="text" name="userId"/>
    <input type="submit" value="Submit">
</form>
</body>
</html>
