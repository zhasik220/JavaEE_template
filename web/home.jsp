<%@ page import="java.util.ArrayList" %>
<%@ page import="moduls.Item" %>
<%@ page import="db.DBConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HomePage</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <div class="container">
        <div class="text-center">
            <h1>Welcome to <%=siteName%></h1>
            <h6 class="text-secondary">Electronic devices with high quality and service</h6>
        </div>
        <div class="row mt-3">
            <% ArrayList<Item> items=(ArrayList) DBConnection.getAllItems();
                for (Item item : items) { %>
            <div class="col-4 mb-3">
                <div class="card h-100 text-center">
                    <div class="card-header"><h3><%=item.getName()%></h3></div>
                    <div class="card-body d-flex flex-column">
                        <h2 class="card-title text-success">$<%=item.getPrice()%></h2>
                        <p class="flex-grow-1 text-center px-5"><%=item.getDescription()%></p>
                        <a href="#" class="btn btn-success mt-auto">Buy Now</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
