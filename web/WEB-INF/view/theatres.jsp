<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
    <title>Firdango</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!--
    Font Scheme

    Logo (Branding): Roboto
    Movie Titles:    Maven Pro
    Primary Texts (eg. article title):     Raleway
    Secondary Texts (eg. article content): Josefin Sans
    -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">
    <link href="resources/css/index.css" rel="stylesheet">

    <style>
        #paginationBar{
            margin: 0 auto;
            text-align: center;
        }

    </style>

</head>

<body>
<jsp:include page="/WEB-INF/includes/header.jsp" />

<div id="topMoviesDiv" class="container">
    <h1 class="display-5 text-white border-bottom-1">All Theatres</h1>
    <c:set var="offset" value="${pageNum*12}"/>
    <c:forEach var="row" begin="0" end="3">
        <div class="card-deck">
            <c:forEach var="col" begin="0" end="3" >
                <c:url var="overviewLink" value="/theatre">
                    <c:param name="theatreId" value="${theatres[offset+row*4+col].id}" />
                </c:url>
                <a href="${overviewLink}" class="card card-inverse text-center">
                    <img class="card-img-top" src="${theatres[offset+row*4+col].photo}" alt="">
                    <div class="card-block">
                        <h4 class="card-title">${theatres[offset+row*4+col].name}</h4>
                    </div>
                </a>
            </c:forEach>
        </div>
    </c:forEach>

    <div id="paginationBar">
        <c:set var="pageNum2" value="${pageNum-5}"/>
        <c:if test="${pageNum2<0}">
            <c:set var="pageNum2" value="0"/>
        </c:if>
        <c:forEach var="page" begin="${pageNum2}" end="${pageNum2+10}" >
            <c:if test="${page==pageNum}">
                <a href="/theatres?page=${page}"><button class="btn btn-warning">${page}</button></a>
            </c:if>
            <c:if test="${page!=pageNum}">
                <a href="/theatres?page=${page}"><button class="btn btn-primary">${page}</button></a>
            </c:if>
        </c:forEach>
    </div>


</div>

<jsp:include page="/WEB-INF/includes/footer.jsp" />
</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="resources/js/index.js"></script>

<script>
    //${(fn:length(theatres)-1)/4}
</script>

</html>
