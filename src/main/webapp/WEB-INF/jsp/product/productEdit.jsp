<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link href="<c:url value="/resources/css/productEdit.css"/>" rel="stylesheet">

<body>
<jsp:include page="menuInner.jsp"/>
<div class="sub-header"></div>

<div class="site">

        <div class="section product-detail">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <a class="prettyphoto" data-rel="prettyPhoto[gallery]" href="images/shop/shop_6.jpg">
                            <img src="${product.photo}" alt="" class="fullwidth">
                        </a>
                    </div>
                    <div class="col-sm-6">
                        <h1 class="product-title">${product.name}</h1>
                        <div class="product_meta">
                            <span class="posted_in">Рейтинг: ${product.ranking}</span>
                            <span class="tagged_as">Количество оценок: ${product.rankingCount}</span>
                        </div>
                        <div class="price mt-1">
                            <span class="posted_in">Цена:</span>
                            <ins>${product.price} &#8381;</ins>
                        </div>
                        <p>${product.description}</p>
                        <div class="mb-3"></div>
                        <form class="cart">
                            <a href="#" class="btn btn-rounded btn-dark"><span>Добавить в корзину</span></a>
                            <a href="#" class="btn btn-rounded btn-dark"><span>Заказать сейчас</span></a>
                        </form>
                        <div class="product_meta">
                            <span class="posted_in">Категория: ${product.category}</span>
                            <span class="posted_in">Продавец: ${product.nickName}</span>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="commerce-tabs tabs mt-5 mb-4">
                            <!-- Nav tabs -->
                            <div class="nav-tabs-wrapper">
                                <ul class="nav nav-tabs tabs text-center">
                                    <li>
                                        <a class="active" href="#tab-content-1" data-toggle="tab">Отзывы</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active fade show" id="tab-content-1">
                                    <div id="comments" class="comments-area">
                                        <ol class="comment-list">
                                            <li class="comment">
                                                <div class="comment-author vcard">
                                                    <img alt="" src="http://tk-themes.net/html-heli/demo/images/avatar/avatar.jpg">
                                                </div>
                                                <div class="comment-content">
                                                    <div class="metadata">
                                                        <h3>Мария В.</h3>
                                                        <a href="#">Ноябрь 5, 2022</a>
                                                        <a href="#">Рейтинг: 5</a>
                                                    </div>
                                                    <p>Быстро доставили</p>
                                                    <p>Хорошое соотношение цена/качество.</p>
                                                    <p>Все характеристики из описания соответствуют.</p>
                                                </div>
                                            </li>
                                            <li class="comment">
                                                <div class="comment-author vcard">
                                                    <img alt="" src="http://tk-themes.net/html-heli/demo/images/avatar/avatar.jpg">
                                                </div>
                                                <div class="comment-content">
                                                    <div class="metadata">
                                                        <h3>Марк</h3>
                                                        <a href="#">Декабрь 22, 2022</a>
                                                        <a href="#">Рейтинг: 5</a>
                                                    </div>
                                                    <p>хорошее качество все работает</p>
                                                </div>
                                            </li>
                                            <li class="comment">
                                                <div class="comment-author vcard">
                                                    <img alt="" src="http://tk-themes.net/html-heli/demo/images/avatar/avatar.jpg">
                                                </div>
                                                <div class="comment-content">
                                                    <div class="metadata">
                                                        <h3>Петр М.</h3>
                                                        <a href="#">Декабрь 22, 2022</a>
                                                        <a href="#">Рейтинг: 4</a>
                                                    </div>
                                                    <p>Долго доставляли. Коробка немного повреждена.</p>
                                                    <p>Товар цел.</p>
                                                </div>
                                            </li>
                                        </ol><!-- .comment-list -->
                                        <div id="respond" class="comment-respond">
                                            <h3 class="comment-reply-title">Оставить отзыв</h3>
                                            <form id="commentform" class="comment-form">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <textarea id="comment" placeholder="Комментарий *" name="comment" aria-required="true"></textarea>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <input id="author" placeholder="Имя *" name="author" type="text" value="" size="30" aria-required="true">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <input id="email" placeholder="Email *" name="email" type="text" value="" size="30" aria-required="true">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <input id="url" placeholder="Ссылка на фото" name="url" type="text" value="" size="30">
                                                    </div>
                                                    <div class="col-md-12">
                                                        <a href="#" class="btn btn-rounded btn-dark mt-1 mb-5"><span>Применить</span></a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="related-products">
                            <h2>Похожие товары</h2>
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="product-item">
                                        <div class="thumb">
                                            <a href="shop-detail.html">
                                                <img src="${product.photo}" alt="">
                                            </a>
                                            <div class="extra">
                                                <div>
                                                    <p>
                                                        <i class="pe-7s-cart"></i>
                                                        <a href="#" class="btn-shop">Добавить в корзину</a>
                                                    </p>
                                                    <p>
                                                        <i class="pe-7s-search"></i>
                                                        <a class="btn-shop" href="shop-detail.html">Посмотреть товар</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="shop-detail.html">
                                            <h3 class="text-center">${product.name}</h3>
                                        </a>
                                        <div class="info text-center">
                                            <span class="price">${product.price} &#8381;</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-item">
                                        <div class="thumb">
                                            <a href="shop-detail.html">
                                                <img src="${product.photo}" alt="">
                                            </a>
                                            <div class="extra">
                                                <div>
                                                    <p>
                                                        <i class="pe-7s-cart"></i>
                                                        <a href="#" class="btn-shop">Добавить в корзину</a>
                                                    </p>
                                                    <p>
                                                        <i class="pe-7s-search"></i>
                                                        <a class="btn-shop" href="shop-detail.html">Посмотреть товар</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="shop-detail.html">
                                            <h3 class="text-center">${product.name}</h3>
                                        </a>
                                        <div class="info text-center">
                                            <span class="price">${product.price} &#8381;</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-item">
                                        <div class="thumb">
                                            <a href="shop-detail.html">
                                                <img src="${product.photo}" alt="">
                                            </a>
                                            <div class="extra">
                                                <div>
                                                    <p>
                                                        <i class="pe-7s-cart"></i>
                                                        <a href="#" class="btn-shop">Добавить в корзину</a>
                                                    </p>
                                                    <p>
                                                        <i class="pe-7s-search"></i>
                                                        <a class="btn-shop" href="shop-detail.html">Посмотреть товар</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="shop-detail.html">
                                            <h3 class="text-center">${product.name}</h3>
                                        </a>
                                        <div class="info text-center">
                                            <span class="price">${product.price} &#8381;</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="product-item">
                                        <div class="thumb">
                                            <a href="shop-detail.html">
                                                <img src="${product.photo}" alt="">
                                            </a>
                                            <div class="extra">
                                                <div>
                                                    <p>
                                                        <i class="pe-7s-cart"></i>
                                                        <a href="#" class="btn-shop">Добавить в корзину</a>
                                                    </p>
                                                    <p>
                                                        <i class="pe-7s-search"></i>
                                                        <a class="btn-shop" href="shop-detail.html">Посмотреть товар</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="shop-detail.html">
                                            <h3 class="text-center">${product.name}</h3>
                                        </a>
                                        <div class="info text-center">
                                            <span class="price">${product.price} &#8381;</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright text-center">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    Разработано <i class="pe-7s-like"></i> Голышкиным Алексеем - Ссылка на источник <a target="_blank" href="#">Клик</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
