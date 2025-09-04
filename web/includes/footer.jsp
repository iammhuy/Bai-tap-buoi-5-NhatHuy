<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="currentDate" value="<%= new java.util.Date() %>" />

<p class="footer-text">
    &copy; Copyright 
    <fmt:formatDate value="${currentDate}" pattern="yyyy"/>
    Mike Murach & Associates
</p>
</body>
</html>
