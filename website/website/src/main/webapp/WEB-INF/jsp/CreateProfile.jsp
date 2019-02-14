<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${message}</h1>
<form action="add">
ProfileId: ${profile.profileId}<br><br>
	Enter Full Name: <input name="fullName"/><br><br>
	Enter password: <input type="password" name="password"><br><br>
	Enter emailId : <input type="email" name="emailId"/><br><br>
	Enter Mobile Number : <input name="contactNumber"/><br><br>
	H.No.: <input name="address.houseNumber"/><br><br>
	Street :  <input name="address.streetName"/><br><br>
	District : <input name="address.district"/><br><br>
	State : <input name="address.state"/><br><br>
	Country :<input name="address.country"/><br><br>
	Enter DOB : <input type="date" name="dateOfBirth"/><br><br>
	Enter Gender : 	<input type="radio" name="gender" value="male"> Male<br> <br />
        			<input type="radio" name="gender" value="female"> Female<br><br/>
	Enter MaritalStatus : 	<input type="radio" name="maritalStatus" value="Single"> Single<br> <br />
        					<input type="radio" name="maritalStatus" value="Married"> Married<br><br/>
	<input type="submit"/>
</form>
<!-- <form action="add">
        Enter fullName: <input type="text" name="fullName" /><br /> <br />
        Enter password: <input type="password" name="password"><br><br>
       	Enter emailId : <input type="email" name="emailId"/><br><br>
       	Enter PhoneNumber:<input type="number" name="contactNumber" /> <br /> <br />
        H.No.: <input name="address.houseNumber"/><br><br>
		Street :  <input name="address.streetName"/><br><br>
		District : <input name="address.district"/><br><br>
		State : <input name="address.state"/><br><br>
		Country :<input name="address.country"/><br><br>
		Enter Gender:<input type="radio" name="gender" value="male"> Male<br> <br />
        <input type="radio" name="gender" value="female"> Female<br><br/>
        Date of Birth: <input type="text" name="dateOfBirth"><br><br/>
        Enter MaritalStatus s:<input type="radio" name="maritalStatus" value="single"> single<br> <br />
        <input type="radio" name="maritalStatus" value="married"> married<br><br/>
        <input type="submit" value="submit"><br><br/> 
        <input type="Reset" value="Reset"><br><br/>
    </form> -->
</body>
</html>



