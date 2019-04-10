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
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>

            <c:forEach var="customer" items="${customers}">

                <tr>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                </tr>

            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
