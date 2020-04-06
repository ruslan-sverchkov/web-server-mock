<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<body>
<script src="https://www.google-analytics.com/analytics.js" async defer></script>
<div>
    Hello, World!
    <div id="os"></div>
    <script>
        document.getElementById("webdriver").appendChild(document.createTextNode(navigator.webdriver));
    </script>
</div>
</body>
</html>