<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/13/2017
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driving Directions</title>
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyC0_gWvwX7QoGXj-uN9jHH22oDb0Y68f60&sensor=false&libraries=places"></script>
    <script type="text/javascript" src="/resources/js/directions.js"></script>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="3">
    <tr>
        <td colspan="2">
            Source:
            <input type="text" id="txtSource" value="" style="width: 200px" />
            &nbsp; Destination:
            <input type="text" id="txtDestination" value="${dest}" style="width: 200px" />
            <br />
            <input id="submit" type="button" value="Get Directions" onclick="GetRoute()" />
            <hr />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <div id="dvDistance">
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div id="dvMap" style="width: 500px; height: 500px">
            </div>
        </td>
        <td>
            <div id="dvPanel" style="width: 500px; height: 500px">
            </div>
        </td>
    </tr>
</table>

</body>
</html>
