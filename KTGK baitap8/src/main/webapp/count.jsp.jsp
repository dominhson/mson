<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>?ng d?ng ??m s? k� t?</title></head>
<body>
    <form action="CountServlet" method="post">
        <label>Nh?p chu?i:</label>
        <input type="text" name="inputString"/>
        <input type="submit" value="??m k� t?"/>
    </form>

    <c:if test="${not empty requestScope.inputString}">
        <p>B?n ?� nh?p: <c:out value="${requestScope.inputString}"/></p>
        <p>S? k� t?: <c:out value="${requestScope.count}"/></p>
    </c:if>

    <c:if test="${requestScope.count > 10}">
        <p>Chu?i b?n nh?p c� nhi?u h?n 10 k� t?!</p>
    </c:if>
</body>
</html>