<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dwe
  Date: 10.04.2019
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save customer</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
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
<div class="container">
    <h3>Save Customer</h3>

    <form:form action="saveCustomer" modelAttribute="customer" method="post">
        <form:hidden path="id"/>

        <table>
            <tbody>
            <tr>
                <td><label for="fn">First name:</label></td>
                <td><form:input id="fn" path="firstName"/></td>
            </tr>
            <tr>
                <td><label for="fn">Last name:</label></td>
                <td><form:input id="ln" path="lastName"/></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><form:input id="email" path="email"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"></td>
            </tr>
            </tbody>
        </table>
    </form:form>

    <div style="clear: both"></div>

    <p>
        <a class="add-button" href="${pageContext.request.contextPath}/customer/list">Back to list</a>
    </p>
</div>
</body>
</html>
