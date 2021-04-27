<%@ page import="Model.Check" %>
<%@ page import="Data.Thread" %>
<%@ page import="Data.User" %><%--
  Created by IntelliJ IDEA.
  Data.User: mac
  Date: 03.05.2020
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Page</title>
    <link rel="stylesheet" href="MainPageStyle.css">
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <%
Check check = (Check) session.getAttribute("check");
User user = check.getCurUser();
%>
<form action="/OP_CourseWork_war_exploded/controller" method="post">
    <div class="wrapper">
        <div>
            <h1>
                ArForum
                <button class="logout_button" name="logout" type="submit">Log Out! <%= user.getUsername() %>
                </button>
                <% if (user.getIsAdmin()) {%>
                <a href="Add.jsp" >Add</a>
                <%}%>
            </h1>
        </div>
        <div class="information">
            <% int i = 0;
                for (Thread t : check.getDataBase().getThreads()) { %>
            <div class="thread">
                <a href="Thread.jsp?i=<%= i %>"><%= t.getTitle() %></a><br>
                <%= t.getDescription() %><br>
                <%= t.getLikes() %><br>
                <% if(user.getIsReg()) {%>
                <button class="like" name="like" type="submit" value="<%= i %>">Like</button>
                <%}%>
                <% if (user.getIsAdmin()) {%>
                <button class="delete" name="delete" type="submit" value="<%= i %>">Delete</button>
                <%}%>
            </div>
            <%
                    i++;
                }
            %>
        </div>
    </div>
</form>
</html>
