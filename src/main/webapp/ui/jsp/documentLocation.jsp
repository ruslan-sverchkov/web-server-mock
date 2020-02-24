<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<body>
<script>
    <c:choose>
        <c:when test="${empty timeoutMillis}">
            <c:choose>
                <c:when test="${empty finalView}">
                    window.location = "/redirect/document/location?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}";
                </c:when>
                <c:otherwise>
                    window.location = "/redirect/document/location?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}&finalView=${finalView}";
                </c:otherwise>
            </c:choose>
        </c:when>
        <c:otherwise>
            <c:choose>
                <c:when test="${empty finalView}">
                    window.setTimeout(function () {
                        window.location = "/redirect/document/location?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}";
                    }, ${timeoutMillis});
                </c:when>
                <c:otherwise>
                    window.setTimeout(function () {
                        window.location = "/redirect/document/location?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}&finalView=${finalView}";
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