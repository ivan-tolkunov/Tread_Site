<%--
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
<form action="/OP_CourseWork_war_exploded/controller" method="post">
    <center><h1>Add</h1></center>
    <div class="group">
        <label>Title</label>
        <label>
            <input type="text" name="title">
        </label>
    </div>
    <div class="group">
        <label>Description</label>
        <label>
            <input type="text" name="description">
        </label>
    </div>
    <div class="group">
        <center><button class="transition_button" type="submit" name="add">Add</button></center>
    </div>
</form>
</body>
</html>
