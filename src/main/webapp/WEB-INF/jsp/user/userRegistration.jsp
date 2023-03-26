<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/registration.css"/>" rel="stylesheet">

<div class="body-content">
    <div class="module">
        <h1>Регистрация</h1>
        <form class="form" action="user/registration" method="post" enctype="multipart/form-data" autocomplete="off">
            <div class="alert alert-error"></div>
            <input type="text" placeholder="Имя" name="firstName" required />
            <input type="text" placeholder="Фамилия" name="lastName" required />
            <input type="text" placeholder="Ник" name="nickName" required />
            <input type="email" placeholder="Почта" name="email" required />
            <input type="text" placeholder="Телефон" name="phone" required />
            <input type="password" placeholder="Пароль" name="password" autocomplete="новый-пароль" required />
            <input type="password" placeholder="Подтвердите пароль" name="acceptPassword" autocomplete="новый-пароль" required />
            <div class="avatar"><label>Выберите фотографию: </label><input type="file" name="photo" accept="image/*" required /></div>
            <input type="submit" value="Зарегистрироваться" name="registerAccept" class="btn btn-block btn-primary"/>
        </form>
    </div>
</div>