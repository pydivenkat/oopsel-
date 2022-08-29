<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Simple Project Management </title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>
<body>
<%if(session.getAttribute("employeeid")!=null){ %>	
	<c:forEach items="${employeeList}" var="employee">
		Welcome <b>${employee.employeeid }</b><br/>
		Name : ${employee.fname } ${employee.lname }<br/>
		Email Id : ${employee.email }<br/>
		Contact no. : ${employee.contactno }<br/>
	</c:forEach>
<%} %>
</body>
</html>