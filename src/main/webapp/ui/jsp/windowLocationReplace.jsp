<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<body>
<script>
    <c:choose>
    <c:when test="${empty timeoutMillis}">
    window.location.replace("/redirect/windowLocation/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}");
    </c:when>
    <c:otherwise>
    window.setTimeout(function () {
        window.location.replace("/redirect/windowLocation/?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}");
    }, ${timeoutMillis});
    </c:otherwise>
    </c:choose>
</script>
<div>
    performing redirect ${redirectId}
</div>
</body>
</html>