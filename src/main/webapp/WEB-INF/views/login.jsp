<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="pl">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Login - CharityApp</title>
    <link rel="stylesheet" href="<c:url value="../../resources/static/css/style.css"/>"/>
</head>
<body>

<jsp:include page="header.jsp"/>

<section class="login-page">
    <h2>Zaloguj się</h2>
    <form:form method="post" modelAttribute="user">
        <div class="form-group">
            <form:input path="username" placeholder="Email" />
        </div>
        <div class="form-group">
            <form:password path="password" placeholder="Hasło" />
            <a href="#" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>
        </div>
        <div class="form-group form-group--buttons">
            <a href="/register" class="btn btn--without-border">Załóż konto</a>
            <button class="btn" type="submit">Zaloguj się</button>
        </div>
    </form:form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>