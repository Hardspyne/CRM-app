<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>listUsers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
<div class="wrapper">
    <div class="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div class="container">
    <div class="content">

        <input title="button" value="Add Customer" class="add-button"
               onclick="window.location.href='showFormForAdd';return false;"
        />

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
                        <a href="${update}">Update</a>
                        |
                        <a href="${delete}"
                           onclick="if (!(confirm('are you sure you want to delete this?'))) return false">Delete</a>
                    </td>
                </tr>

            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
