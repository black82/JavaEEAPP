<%--
  Created by IntelliJ IDEA.
  User: Iurii
  Date: 25.03.2020
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TestJsp</title>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
<h1>Training Form</h1>
<form action="${pageContext.request.contextPath}/saved" method="post">
    <label>
        <input type="email" name="username"/>
    </label>
    <label>
        <input type="password" name="password">
    </label>
    <input type="submit" name="submit">
</form>
</body>
</html>
