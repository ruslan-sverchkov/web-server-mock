<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Web Server Mock</title>
</head>
<body>
<script src="https://www.google-analytics.com/analytics.js" async defer></script>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        document.getElementById('main')
            .appendChild(document.createTextNode(navigator.plugins.length));
    });
</script>
<div>
    Hello, World!
    <div id="main"/>
</div>
</body>
</html>