<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<body>
<script>
    <c:choose>
    <c:when test="${empty timeoutMillis}">
    window.location = "/redirect/window/location/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}&finalView=${finalView}";
    </c:when>
    <c:otherwise>
    window.setTimeout(function () {
        window.location = "/redirect/window/location/?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}&finalView=${finalView}";
    }, ${timeoutMillis});
    </c:otherwise>
    </c:choose>
</script>
<div>
    performing redirect ${redirectId}
</div>
</body>
</html>