<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>${requestScope.category.name} - Moto-Giełda</title>
    <%@ include file="../segments/stylesheets.jsp" %>
</head>
<body>
<div class="container">
    <%@ include file="../segments/header.jsp" %>

    <main>
        <h1>${requestScope.category.name}</h1>
        <p>${requestScope.category.description}</p>
        <%@ include file="../segments/discovery-list.jsp" %>
    </main>
    <%@ include file="../segments/footer.jsp" %>
</div>
</body>
</html>