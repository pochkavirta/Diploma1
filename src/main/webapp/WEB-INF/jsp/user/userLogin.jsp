<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet">

<div class="login-box">
    <h2>Авторизация</h2>
    <form>
        <div class="user-box">
            <input type="text" name="" required="">
            <label>Ник</label>
        </div>
        <div class="user-box">
            <input type="password" name="" required="">
            <label>Пароль</label>
        </div>
        <a href="#">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            Войти
        </a>
    </form>
</div>

<!-- TODO Сложное - Добавить прокидывание вводимых параметров с формы -->
<!-- TODO Сложное - Добавить валидацию логина/пароль пока что без БД, только логику на фронт -->
