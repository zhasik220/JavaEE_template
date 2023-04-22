<%@ page import="moduls.User" %>
<%
    User user= (User) session.getAttribute("currentUser");
%>
<div class="container mt-1">
    <nav class="navbar navbar-expand-lg navbar">
        <div class="col-3">
            <a class="navbar-brand" href="/"><%=siteName%></a>
        </div>
        <div class="d-flex col-9 justify-content-end" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">Top Sales</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">New Sales</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/">By Category</a>
                </li>
                <%
                if (user!=null){


                %>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/logout">Log out</a>
                </li>

                <%
                    }
                else {
                %>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="/login">Sign in</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </nav>
    <hr class="hr" />
</div>
