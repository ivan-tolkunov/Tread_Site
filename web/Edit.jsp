<%@ page import="Data.Thread" %><%--
  Created by IntelliJ IDEA.
  User: memlo
  Date: 5/26/2020
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
    <link rel="stylesheet" href="RegistrationStyle.css">
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<% Thread thread = (Thread) session.getAttribute("thread"); %>
<form action="/OP_CourseWork_war_exploded/controller" method="post">
    <center><h1>Edit</h1></center>
    <div class="group">
        <label>Title</label>
        <label>
            <input type="text" name="titleEdit" value="<%= thread.getTitle() %>">
        </label>
    </div>
    <div class="group">
        <label>Description</label>
        <label>
            <input type="text" name="descriptionEdit" value="<%= thread.getDescription() %>">
        </label>
    </div>
    <div class="group">
        <center><button class="transition_button" type="submit" name="edit">Edit</button></center>
    </div>
</form>
</body>
</html>
