<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/resources/css/cart.css"/>" rel="stylesheet">

<jsp:include page="menuInner.jsp"/>
<div class="sub-header"></div>

<div class="wrap cf">
    <h1 class="projTitle">Оформление заказа<span>-доставки</span></h1>
    <div class="heading cf">
        <h1>Мои товары</h1>
        <a href="http://localhost:8080/marketplace/" class="continue">Продолжить покупки</a>
    </div>
    <div class="cart">
        <ul class="cartWrap">
            <c:forEach items="${products}" var="product">
                <li class="items even">

                    <div class="infoWrap">
                        <div class="cartSection">

                            <img src="${product.photo}" alt="" class="itemImg"/>
                            <p class="itemNumber">Продавец: ${product.nickName}</p>
                            <h3>${product.name}</h3>
                            <p class="stockStatus"> В наличие</p>
                        </div>

                        <div class="prodTotal cartSection">
                            <p>${product.price} &#8381;</p>
                        </div>
                        <div class="cartSection removeWrap">
                            <form action="${product.id}" method="post">
                                <button class="remove">X</button>
                            </form>
                        </div>
                    </div>
                </li>
            </c:forEach>

        </ul>
    </div>

    <div class="promoCode"><label>Промокод</label><input type="text" name="promo" placholder="Введите код"/>
        <a href="#" class="btn"></a>
    </div>

    <div class="subtotal cf">
        <ul>
            <li class="totalRow"><span class="label">Сумма заказа: </span><span class="value">${allProductPrice} &#8381;</span></li>

            <li class="totalRow"><span class="label">Доставка: </span><span class="value">${shipping} &#8381;</span></li>

            <li class="totalRow final"><span class="label">Всего: </span><span class="value">${cartPrice} &#8381;</span></li>
            <li class="totalRow"><a href="#" class="btn continue">Оформить заказ</a></li>
        </ul>
    </div>
</div>