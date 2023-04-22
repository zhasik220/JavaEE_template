<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>HomePage</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-12 text-center">
                <h1>Hello <%=user.getFullName()%></h1>
        </div>
    </div>
</div>
</body>
</html>
