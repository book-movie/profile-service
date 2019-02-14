<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>success</h1>
	<c:form action="update">
		<table>
			<tr>
				<th>profileId</th>
				<th>fullName</th>
				<th>password</th>
				<th>emailId</th>
				<th>contactNumber</th>
				<th>address.houseNumber</th>
				<th>address.streetName</th>
				<th>address.district</th>
				<th>address.state</th>
				<th>address.country</th>
				<th>gender</th>
				<th>dateOfBirth</th>
				<th>maritalStatus</th>

			</tr>
			<jstl:if test="${profile !=null}">
				<tr>
					<td>${profile.profileId}</td>
					<td>${profile.fullName}</td>
					<td>${profile.password}</td>
					<td>${profile.emailId}</td>
					<td>${profile.contactNumber}</td>
					<td>${address.houseNumber}</td>
					<td>${address.streetName}</td>
					<td>${address.district}</td>
					<td>${address.state}</td>
					<td>${address.country}</td>
					<td>${gender}</td>
					<td>${dateOfBirth}</td>
					<td>${maritalStatus}</td>

				</tr>
			</jstl:if>
			<jstl:if test="${profile !=null}">
			<jstl:forEach var="profile" items="${profiles}">
				<tr>
					<td>${profile.profileId}</td>
					<td>${profile.fullName}</td>
					<td>${profile.password}</td>
					<td>${profile.emailId}</td>
					<td>${profile.contactNumber}</td>
					<td>${address.houseNumber}</td>
					<td>${address.streetName}</td>
					<td>${address.district}</td>
					<td>${address.state}</td>
					<td>${address.country}</td>
					<td>${gender}</td>
					<td>${dateOfBirth}</td>
					<td>${maritalStatus}</td>
				<tr>
			</jstl:forEach>
			</jstl:if>
		</table>
	</c:form>
</body>
</html>