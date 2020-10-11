<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Admin Panel</title>

    <link rel="stylesheet" href="<c:url value="../../../resources/static/css/style.css"/>"/>
</head>
<body>

<header class="header--main-page">
    <nav class="container container--70">
        <ul class="nav--actions">
<%--            <li><a href="/login" class="btn btn--small btn--without-border">Zaloguj</a></li>--%>
<%--            <li><a href="/register" class="btn btn--small btn--highlighted">Załóż konto</a></li>--%>
        </ul>
        <ul>
            <li><a href="/admin/adminHome" class="btn btn--without-border active">Start</a></li>
            <li><a href="/admin/institutionsList" class="btn btn--without-border">Instytucje</a></li>
            <li><a href="/admin/usersList" class="btn btn--without-border">Użytkownicy</a></li>
            <li><a href="/admin/adminList" class="btn btn--without-border">Administratorzy</a></li>
        </ul>
    </nav>
</header>

Strona administratora

<script src="<c:url value="../../../resources/static/js/app.js"/>"></script>
</body>
</html>
