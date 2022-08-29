<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="r">
<title>Client Home</title>
</head>
<body>
<input type="hidden" id="refreshed" value="no">
<h4>My Profile</h4>
<c:forEach items="${clientList}" var="client">
Welcome ${client.clientid }<br>
Your Name is : ${client.name }<br>
Your contact person is: ${client.contactperson }<br>
Your email Id is : ${client.email }<br>
Your address is : ${client.address }<br>
</c:forEach>

<h4><a href="editclientprofile.html">Edit Profile</a></h4>
<h4><a href="changeclientpassword.html">Change Password</a></h4>
<a href="logout.html">Log Out</a>
</body>
</html>