<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Dodaj ogłoszenie Moto-Giełda</title>
    <%@ include file="../segments/stylesheets.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/add-discovery-form.css">
</head>
<body>
<div class="container">
    <%@ include file="../segments/header.jsp" %>

    <form action="${pageContext.request.contextPath}/discovery/add" method="post" class="discovery-form">
        <h2 class="discovery-form-title">Dodaj ogłoszenie sprzedaży</h2>
        <input name="title" placeholder="Tytuł" required>
        <input name="url" placeholder="numer telefonu" type="number" required>
        <select name="categoryId">
            <c:forEach var="category" items="${requestScope.categories}">
                <option value="${category.id}">${category.name}</option>
            </c:forEach>
        </select>
        <textarea name="description" placeholder="Opis"></textarea>
        <button class="discovery-form-button">Dodaj</button>
    </form>

    <%@ include file="../segments/footer.jsp" %>
</div>
</body>
</html>