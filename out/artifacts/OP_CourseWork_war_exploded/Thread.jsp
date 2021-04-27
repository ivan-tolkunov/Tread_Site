<%@ page import="Model.Check" %>
<%@ page import="Data.User" %>
<%@ page import="Data.Comment" %>
<%@ page import="Data.Thread" %><%--
  Created by IntelliJ IDEA.
  User: memlo
  Date: 5/26/2020
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
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
    Thread thread = check.getDataBase().getThreads().get(Integer.parseInt(request.getParameter("i")));
    String i = request.getParameter("i");
    session.setAttribute("thread", thread);
    session.setAttribute("i", i);
%>
<form action="/OP_CourseWork_war_exploded/controller" method="post">
    <div class="wrapper">
        <div>
            <h1>
                ArForum
                <% if (user.getIsAdmin()) {%>
                <a href="Edit.jsp?i="<%= i %>>Edit</a>
                        <%}%>
                <a href="MainPage.jsp">Main Page</a>
            </h1>
        </div>
        <div class="information">
            <center><h1><%= thread.getTitle() %></h1></center>
            <%= thread.getDescription() %><br>
        </div>
        <div class="information">
            <%if (user.getIsReg()) {%>
                <label>Enter comment</label>
                <label>
                    <input type="text" name="comment">
                </label>
            <button class="transition_button" type="submit" name="addComment">Подтвердить</button>
            <%}%>
            <% int num = 1;
                for (Comment c : check.getDataBase().getComments()) { %>
            <div class="comment">
                <% if (thread.getTitle().equals(c.getThread().getTitle())) { %>
                <%= num %>)<%= c.getText() %>
              <% num++;
                }%>
            </div>
            <% }%>
        </div>
    </div>
    </div>
</form>
</body>
</html>
