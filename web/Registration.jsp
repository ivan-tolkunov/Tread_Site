<%@ page import="Model.Check" %>
<%@ page import="Data.User" %>
<%--  Created by IntelliJ IDEA.--%>
<%--  Data.User: mac--%>
<%--  Date: 26.04.2020--%>
<%--  Time: 20:07--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Registration</title>
  <link rel="stylesheet" href="RegistrationStyle.css">
  <style>
    a {
      text-decoration: none;
    }
  </style>
</head>
<body>
  <form action="/OP_CourseWork_war_exploded/controller" method="post">
    <center><h1>Войти</h1></center>
    <div class="group">
      <label>Имя пользователя:</label>
      <label>
        <input type="text" name="username">
      </label>
    </div>
    <div class="group">
      <label>Пароль:</label>
      <label>
        <input type="text" name="password">
      </label>
    </div>
    <div class="group">
      <center><button class="transition_button" type="submit" name="registrButton">Подтвердить</button></center>
      <br>
    </div>
    <div class="group">
      <center><button class="transition_button" type="submit" name="enterGuest">Enter as guest</button></center>
    </div>

  </form>
</body>
</html>
