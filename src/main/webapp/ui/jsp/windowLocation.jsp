<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<c:choose>
    <c:when test="${empty timeoutMillis}">
        <script>
            window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}";
        </script>
    </c:when>
    <c:otherwise>
        <script>
            window.setTimeout(function(){ window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&timeoutMillis=${timeoutMillis}&redirectId=${redirectId}"; }, ${timeoutMillis});
        </script>
    </c:otherwise>
</c:choose>
<div>
    performing redirect ${redirectId}
</div>
</body>
</html>