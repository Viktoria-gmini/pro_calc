
<%@ page contentType="text/jspa;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

<h3>Pages with examples for:</h3>
<ur>
    <c:forEach var="url" items="${spisok}">
        <li>
            <c:out value="hello, Vasuano" />
        </li>
    </c:forEach>
</ur>
</body>
</html>
