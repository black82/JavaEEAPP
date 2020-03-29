<%--
  Created by IntelliJ IDEA.
  User: Iurii
  Date: 25.03.2020
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>TestJsp</title>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
<jsp:useBean id="user" class="model.User" scope="session"></jsp:useBean>
<jsp:setProperty name="user" property="email" value="max@gfd.com"></jsp:setProperty>
<jsp:setProperty name="user" property="password" value="32432432"></jsp:setProperty>
<h1>Training Form</h1>
<form action="${pageContext.request.contextPath}/saved" method="post">
    <label style="align-content: flex-end">
        <input type="email" name="username" value="${user.email}"/>
    </label>
    <label>
        <input type="password" name="password" value="${user.password}">
    </label>
    <input type="submit" name="submit">
</form>
</body>
</html>
