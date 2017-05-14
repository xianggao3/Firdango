<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/admin/listUsers">Users</a><br>
<a href="${pageContext.request.contextPath}/admin/listMovies">Movies</a><br>
<a href="${pageContext.request.contextPath}/admin/listReviews">Reviews</a><br>
<a href="${pageContext.request.contextPath}/admin/showNewsletterForm">Newsletter</a>
</body>
</html>