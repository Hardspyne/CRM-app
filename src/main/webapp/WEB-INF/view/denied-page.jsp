<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: dwe
  Date: 12.04.2019
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Denied Page</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="wrapper">
    <div class="header">
        <h2>CRM - Customer Relationship Manager</h2>
        <div>
            <b style="color: white;margin-right: 15px">Hello, <security:authentication
                    property="principal.username"/>!</b>
            <form:form style="display: inline-block;margin: 0" method="post"
                       action="${pageContext.request.contextPath}/logout">
                <input class="add-button" type="submit" value="logout">
            </form:form>
        </div>
    </div>
</div>
<h2>You don't have access!</h2>
<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
</body>
</html>
