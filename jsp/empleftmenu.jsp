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

			
			<div id="customer">
				<div id="custimg"><img src="images/small_icon1.jpg"  /></div>
				<div id="custtxt"><a href="employeedetails.html" class="custtxt">Profile</a></div>
			</div>
			<div id="customer1">
			  <span class="txtcontent1">
			  		<%@include file="empwelcome.jsp" %>
			<br /><a href="employeedetails.html" class="more">more</a></span>
			</div>
			<div id="customer">
				<div id="custimg"><img src="images/small_icon2.jpg"  /></div>
				<div id="custtxt"><a href="empallprojects.html" class="custtxt">Projects</a></div>
			</div>
			<div id="customer1">
			  <span class="txtcontent1">
			  		<%@include file="empprojects.jsp" %>
			<br /><a href="empallprojects.html" class="more">more</a></span>
			</div>
			
			<div id="customer">
				<div id="custimg"><img src="images/small_icon3.jpg"  /></div>
				<div id="custtxt"><a href="viewemptodos.html" class="custtxt">Todos</a></div>
			</div>
			<div id="customer1">
			  <span class="txtcontent1">
			  
			  		<c:if test="${viewPermision=='1'}">
			  			<a href="viewemptodos.html?mode=all" class="linktxt">View All todos</a><br />
			  		</c:if>
			  		<c:if test="${addPermision=='1'}">
			  			<a href="addtodos.html?mode=new" class="linktxt">Add todo</a><br />
					 </c:if>
						 <a href="viewemptodos.html?mode=assigned" class="linktxt">Assigned by me</a><br />
					<br /><a href="#" class="more">more</a></span>
			</div>
			
			<div id="customer">
				<div id="custimg"><img src="images/small_icon4.jpg"  /></div>
				<div id="custtxt"><a href="viewalldefect.html" class="custtxt">Defect</a></div>
			</div>
			<div id="customer1">
			  <span class="txtcontent1">
			 Manage your customers with a lot of 
			details. You are able to upload docu
			ments (invoices, offers, ...) too. 
			Access their projects (if you're an 
			admin/semi-admin or an 
			assigned user).<br />
			<br /><a href="#" class="more">more</a></span>
			</div>
			
			
			<div id="customer">
				<div id="custimg"><img src="images/small_icon4.jpg"  /></div>
				<div id="custtxt"><a href="#" class="custtxt">Customer</a></div>
			</div>
			<div id="customer1">
			  <span class="txtcontent1">
			 Manage your customers with a lot of 
			details. You are able to upload docu
			ments (invoices, offers, ...) too. 
			Access their projects (if you're an 
			admin/semi-admin or an 
			assigned user).<br />
			<br /><a href="#" class="more">more</a></span>
			</div>
			
			
			

	  </body>
	  </html>