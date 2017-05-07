<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/6/2017
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Newsletter Form</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">

</head>
<body>
    <h1>Send a Newsletter</h1>
    <div id="container">
        <h3>Save User</h3>
        <!-- modelAttribute pre-populates fields -->
        <form:form action="sendNewsletter" modelAttribute="newsletter" method="post">
            <!-- need this to keep track of id for get/set ops-->
            <form:hidden path="id" />
            <table>
                <tbody>
                <tr>
                    <td><label>Subject:</label></td>
                    <td><form:input path="subject" /></td>
                </tr>
                <tr>
                    <td><label>Body:</label></td>
                    <td><form:input path="body" /></td>
                </tr>
                </tbody>
            </table>
        </form:form>
        <div style="clear;both;"></div>
        <p>
            <a href="${pageContext.request.contextPath}/admin/listUsers">Back to List</a>
        </p>
    </div>
</body>
</html>
