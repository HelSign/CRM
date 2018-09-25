<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"
/>

<title> List Customers </title>

</head>
<body>
<div id="wrapper">
<div id="header">
<h2> List customers </h2>
</div>
</div>

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