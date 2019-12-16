<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
    <c:choose>
        <c:when test="${not empty redirectUrl}">
            <meta http-equiv="refresh" content="${timeoutSeconds};URL=${redirectUrl}">
        </c:when>
        <c:otherwise>
            <meta http-equiv="refresh" content="${timeoutSeconds}">
        </c:otherwise>
    </c:choose>
</head>
<body>
<div>
    ${redirects} redirects have been successfully performed
</div>
</body>
</html>