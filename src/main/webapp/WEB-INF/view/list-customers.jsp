<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
        <title> List Customers </title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h2> List customers </h2>
            </div>
        </div>
        <div id="container">
            <div id="content">
            <input type="button" value="Add Customer"
                    onClick="window.location.href='showFormForAdd'; return false;"
                    class="add-button"/>
                    <form:form action="search" method="POST">
                        <input type="text" name="searchName"/>
                        <input type="submit" value="Search" class="add-button"/>
                    </form:form>
                <table>
                    <tr>
                        <th>First Name </th><th>Last Name </th><th>Email</th><th>Action</th>
                    </tr>
                    <c:forEach var="tempCustomer" items="${customers}">
                        <c:url var="updateLink" value="/customer/showFormForUpdate">
                            <c:param name="customerId" value="${tempCustomer.id}"/>
                        </c:url>
                        <c:url var="deleteLink" value="/customer/deleteCustomer">
                             <c:param name="customerId" value="${tempCustomer.id}"/>
                        </c:url>
                        <tr>
                                <td>${tempCustomer.firstName}</td>
                                <td>${tempCustomer.lastName}</td>
                                <td>${tempCustomer.email}</td>
                                <td><a href ="${updateLink}">Update</a> |
                                     <a href ="${deleteLink}"
                                      onClick="if (!(confirm('Are you sure you want to delete the customer'))) return false">
                                     Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>