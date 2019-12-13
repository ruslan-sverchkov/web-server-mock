<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<script>
    window.setTimeout(function(){ window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}"; }, 10);
    #window.location = "/redirect/javascript/?redirectsNumber=${redirectsNumber}&redirectId=${redirectId}";
</script>
<div>
    performing redirect ${redirectId}
</div>
</body>
</html>