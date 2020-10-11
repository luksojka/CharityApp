<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Admin - Institutions</title>
    <link rel="stylesheet" href="<c:url value="../../../resources/static/css/style.css"/>"/>
</head>
<body>
<header class="header--main-page" style="height: 250px">
    <nav class="container container--70">
        <ul class="nav--actions">
            <%--            <li><a href="/login" class="btn btn--small btn--without-border">Zaloguj</a></li>--%>
            <%--            <li><a href="/register" class="btn btn--small btn--highlighted">Załóż konto</a></li>--%>
        </ul>
        <ul>
            <li><a href="/admin/homepage" class="btn btn--without-border active">Start</a></li>
            <li><a href="/admin/institutionsList" class="btn btn--without-border">Instytucje</a></li>
            <li><a href="/admin/usersList" class="btn btn--without-border">Użytkownicy</a></li>
            <li><a href="/admin/adminList" class="btn btn--without-border">Administratorzy</a></li>
        </ul>
    </nav>
</header>

<section class="help">
    <h2>Lista instytucji</h2>

    <div class="help--slides active" data-id="1">

        <ul class="help--slides-items">

            <li>
                <table>
                    <thead>
                    <th>Id</th>
                    <th>Nazwa</th>
                    <th>Opis</th>
                    <th>Akcja</th>
                    </thead>
                    <tbody>
                    <c:forEach items="${institutions}" var="institution">
                        <tr>
                            <th>${institution.id}</th>
                            <th>${institution.name}</th>
                            <th>${institution.description}</th>
                            <th>
                                <a href="/admin/editInstitution" class="btn btn--small">Edytuj</a>
                                <a href="/admin/deleteInstitution" class="btn btn--small">Usuń</a>
                            </th>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </li>

            <div class="form-group form-group--buttons">
                <a href="#" class="btn btn--without-border">Dodaj instytucję</a>
            </div>
        </ul>
    </div>
</section>

<script src="<c:url value="../../../resources/static/js/app.js"/>"></script>
</body>
</html>