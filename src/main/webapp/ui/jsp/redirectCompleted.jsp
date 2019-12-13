<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script>
        window.setTimeout(function(){ alert( "Привет" ); }, 10000);
    </script>
    <title>Web Server Mock</title>
</head>
<body>
<div>
    ${redirects} redirects have been successfully performed
</div>
</body>
</html>