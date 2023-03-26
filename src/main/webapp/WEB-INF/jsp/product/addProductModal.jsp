<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/productModal.css"/>" rel="stylesheet">

<input type="checkbox" name="showForm" id="showForm" class="showForm">

<div class="form">
    <form method="post" action="products/add">
        <h2>Информация о продукте</h2>
        <div class="left section">
            <input type="text" name="name" placeholder="Название продукта" required>
            <input type="text" name="category" placeholder="Категория" required>
            <input type="number" name="price" placeholder="Цена" required>
            <input type="text" name="photo" placeholder="Фото товара" required>
        </div>
        <div class="right section">
            <input type="text" name="nickName" placeholder="Информация продавца" required>
            <textarea name="description" placeholder="Описание товара" required></textarea>
        </div>
        <button type="submit" class="sendForm left">Добавить</button>
        <label for="showForm" class="closeFormLabel left">Закрыть</label>
    </form>
</div>
