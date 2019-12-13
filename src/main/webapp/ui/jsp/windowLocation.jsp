<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<body>
<script>
    <c:choose>

    <c:when test="${type == 'WINDOW_LOCATION'}">
    <c:choose>
    <c:when test="${empty timeoutMillis}">
    window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}";
    </c:when>
    <c:otherwise>
    window.setTimeout(function () {
        window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}";
    }, ${timeoutMillis});
    </c:otherwise>
    </c:choose>
    </c:when>

    <c:when test="${type == 'DOCUMENT_LOCATION'}">
    <c:choose>
    <c:when test="${empty timeoutMillis}">
    document.location.href = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}";
    </c:when>
    <c:otherwise>
    window.setTimeout(function () {
        document.location.href = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}";
    }, ${timeoutMillis});
    </c:otherwise>
    </c:choose>
    </c:when>

    <c:otherwise>
    <c:choose>
    <c:when test="${empty timeoutMillis}">
    window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}";
    </c:when>
    <c:otherwise>
    window.setTimeout(function () {
        window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}";
    }, ${timeoutMillis});
    </c:otherwise>
    </c:choose>
    </c:otherwise>

    </c:choose>
</script>
<div>
    performing redirect ${redirectId}
</div>
</body>
</html>