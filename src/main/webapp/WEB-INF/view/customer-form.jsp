<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    </div>
</div>

<div class="container">
    <h3>Save Customer</h3>

    <form:form action="saveCustomer" modelAttribute="customer" method="post">
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
                <td><label for="fn">Email:</label></td>
                <td><form:input id="fn" path="email"/></td>
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
        <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
    </p>
</div>
</body>
</html>
