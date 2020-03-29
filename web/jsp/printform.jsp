<jsp:useBean id="user" scope="request" type="model.User"/>
<%--
  Created by IntelliJ IDEA.
  User: Iurii
  Date: 28.03.2020
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Welcome</h1>
${user.email}
<br>
${user.password}
<br>
${cookie.size()}
${cookie.JESSIONID}
</body>
</html>
