<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<header>
<title> List Customers </title>
</header>
<body>
<h2> List customers </h2>
<table>
<tr>
<th>First Name </th><th>Last Name </th><th>Email</th>
</tr>
<c:forEach var="tempCustomer" items="${customers}">

<tr>
<td>${tempCustomer.firstName}</td>
<td>${tempCustomer.lastName}</td>
<td>${tempCustomer.email}</td>
</tr>

</c:forEach>
</table>
</body>
</html>