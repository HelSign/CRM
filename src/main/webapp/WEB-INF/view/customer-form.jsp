<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
        <link type="text/css" rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
        <title> List Customers </title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h2> CRM - Customer Relational Manager </h2>
            </div>
        </div>
        <div id="container">
            <h3> Save Customer</h3>
            <form:form action="saveCustomer" modelAttribute="customer" method="POST">
            <form:hidden path="id"/>
                <table>
                    <tr><td><label>First Name: </label></td><td><form:input path="firstName"/></td></tr>
                    <tr><td><label>Last Name: </label></td><td><form:input path="lastName"/></td></tr>
                    <tr><td><label>Email: </label></td><td><form:input path="email"/></td></tr>
                    <tr><td></td><td>  <input type="submit" value="Save" class="save"></td></tr>

                </table>
            </form:form>

        </div>
        <div><a href ="${pageContext.request.contextPath}/customer/list"> Back to List </a></div>
    </body>
</html>