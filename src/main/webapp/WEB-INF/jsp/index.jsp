<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <%--http://stackoverflow.com/a/24070373/548473--%>
    <title>Marketplace</title>
    <link rel="shortcut icon" type="image/png" href="https://i.imgur.com/ap3z555.png">
    <script type="text/javascript" src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/4.1.3/js/bootstrap.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.19/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.19/js/dataTables.bootstrap4.min.js" defer></script>
    <script type="text/javascript" src="webjars/noty/3.1.4/lib/noty.min.js" defer></script>
    <script type="text/javascript" src="webjars/datetimepicker/2.5.20/build/jquery.datetimepicker.full.min.js"
            defer></script>
</head>

<html class="light">
<body>

<jsp:include page="product/addProductModal.jsp"/>
<jsp:include page="product/menu.jsp"/>
<jsp:include page="product/product.jsp"/>

</body>
</html>