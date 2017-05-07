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
    <div class="container">
        <h1>Send a Newsletter</h1>
        <form:form action="sendNewsletter" modelAttribute="newsletter" method="post">
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
                <tr>
                    <td><label></label></td>
                    <td><input type="submit" value="Send Newsletter" /></td>
                </tr>
                </tbody>
            </table>
        </form:form>
    </div>
</body>
</html>
