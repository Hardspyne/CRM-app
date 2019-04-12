<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>listUsers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

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
    <div class="content">
        <security:authorize access="hasAnyRole('MANAGER','ADMIN')">
            <input title="button" value="Add Customer" class="add-button"
                   onclick="window.location.href='showFormForAdd';return false;"
            />
        </security:authorize>
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>

            <c:forEach var="customer" items="${customers}">

                <c:url var="update" value="/customer/showFormForUpdate">
                    <c:param name="customerId" value="${customer.id}"/>
                </c:url>
                <c:url var="delete" value="/customer/delete">
                    <c:param name="customerId" value="${customer.id}"/>
                </c:url>
                <tr>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    <td>
                        <security:authorize access="hasAnyRole('MANAGER','ADMIN')">
                            <a href="${update}">Update</a>
                        </security:authorize>

                        <security:authorize access="hasAnyRole('ADMIN')">
                            |
                            <a href="${delete}"
                               onclick="if (!(confirm('are you sure you want to delete this?'))) return false">Delete</a>
                        </security:authorize>
                    </td>
                </tr>

            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
