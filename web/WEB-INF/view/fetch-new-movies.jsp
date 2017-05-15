<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/14/2017
  Time: 7:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fetch New Movies</title>
</head>
<body>
<h1>Update Movies Table</h1>
<form action="/admin/fetchNewMovies" method="post">
    Enter the URL to the XML file: <input type="text" name="url"/>
    <input type="submit" value="Submit">
</form>
</body>
</html>
