<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="r">
<title>Employee Home</title>
</head>
<body>

<h4>My Profile</h4>
<c:forEach items="${employeeList}" var="employee">
Welcome ${employee.employeeid }<br>
Your first Name is : ${employee.fname }<br>
Your last Name is : ${employee.lname }<br>
Your email Id is : ${employee.email }<br>
Your contact no. is : ${employee.contactno }<br>
Your address is : ${employee.address }<br>
You are a ${employee.jobrolename }<br>
Your joining date was: ${employee.joiningdate }
</c:forEach>

<h4><a href="editemployeeprofile.html">Edit Profile</a></h4>
<h4><a href="changeemployeepassword.html">Change Password</a></h4>
<%if(session.getAttribute("jobroleid")!=null && session.getAttribute("jobroleid").equals("2")){ %>
<h4><a href="adddefect.html">Add Defect</a></h4>
<h4><a href="defectmain.html">View All Defect</a></h4>
<%} %>
<a href="logout.html">Log Out</a>
</body>
</html>