<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <c:form action="update" modelAttribute="profile">
        <h1>${message}</h1>
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
                <td><c:input type="number" path="profileId" value="${profile.profileId}" readOnly="readonly"/></td>
                    <td><c:input type="text" path="fullName" value="${profile.fullName}"/></td>
                    <td><c:input type="password" path="password" value="${profile.password}"/></td>
                    <td><c:input type="email" path="emailId" value="${profile.emailId}"/></td>
                    <td><c:input type="number" path="contactNumber" value="${profile.contactNumber}"/></td>
                    <td><c:input type="number" path="address.houseNumber" value="${address.houseNumber}"/></td>
                    <td><c:input type="text" path="address.streetName" value="${address.streetName}"/></td>
                    <td><c:input type="text" path="address.district" value="${address.district}"/></td>
                    <td><c:input type="text" path="address.state" value="${address.state}"/></td>
                    <td><c:input type="text" path="address.country" value="${address.country}"/></td>
                    <td><c:input type="text" path="gender" value="${profile.gender}" readOnly="readonly"/></td>
                    <td><c:input type="text" path="dateOfBirth" value="${profile.dateOfBirth}"/></td>
                    <td><c:input type="text" path="maritalStatus" value="${profile.maritalStatus}"/></td>
                </tr>
            </jstl:if>
        </table>
        <input type="submit" value="Submit"><br>
        <input type="reset" value="reset">
        <br>
    </c:form>
</body>
</html>