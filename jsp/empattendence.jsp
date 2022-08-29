<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Client</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/calendar.css">
<script type="text/javascript" src="js/customer.js"></script>
<script language="JavaScript" src="js/calendar_us.js"></script>
<script type="text/javascript">
function cancel()
{
document.location='adminhome.html';
}
function openPopup()
{
popup('popUpDiv');
}

function closeDiv()
{
popup('popUpDiv');
}

</script>
<style type="text/css">

#popUpDiv {
	position:absolute;
	background-color:#E7F2E6;
	width:580px;
	height:300px;
	z-index:0; 
	margin-top: 150px;
	border-style: outset;
	border-width: thin;
	border-color: #0000ff;
}

</style>
</head>
<body class="body">

<div id="wrapper">	
		<%@include file="adminheader.jsp" %>
	<div id="contain_body">
		<div id="leftmenu">			
				<%@include file="adminleftmenu.jsp" %>
	  	</div>
	  
		<div id="bodycontent">
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Employee Attendance</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">


			<form:form name="myform">
				
				<table border="0" align="center">
		
					

					<tr>
						<td class="menutext-h1" align="right">Employee Name:</td>
						<td><form:select path="employeeid" cssClass="loginsmall" cssStyle="width: 138px;">				
								<form:options items="${employeeNameList}" itemLabel="employeename"
									itemValue="employeeid" />
							</form:select><label class="error">*</label>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="employeeid" cssClass="error" /></td>
					</tr>

					
					<tr>
						<td class="menutext-h1" align="right">Month:</td>
						<td><form:select path="month" cssClass="loginsmall" cssStyle="width: 138px;">
								<form:option value="0">Select a month</form:option>
								<form:option value="1">January</form:option>
								<form:option value="2">February</form:option>
								<form:option value="3">March</form:option>
								<form:option value="4">Apr</form:option>
								<form:option value="5">May</form:option>
								<form:option value="6">June</form:option>
								<form:option value="7">July</form:option>
								<form:option value="8">August</form:option>
								<form:option value="9">Sept</form:option>
								<form:option value="10">Oct</form:option>
								<form:option value="11">Nov</form:option>
								<form:option value="12">Dec</form:option>
							</form:select><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="month" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">Project Status:</td>
						<td><form:select path="year" cssClass="loginsmall" cssStyle="width: 138px;">
								<form:option value="0">Select Year</form:option>
								<form:option value="0">2009</form:option>
								<form:option value="0">2010</form:option>
								<form:option value="0">2011</form:option>
							</form:select><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="year" cssClass="error" /></td>
					</tr>

	

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="submit"
							value="Get Attendance" class="button_text" />&nbsp;&nbsp; <input
							type="button" value="Cancel" class="button_text"
							onclick="cancel()" />
						</td>

					</tr>
				</table>
			</form:form>
			
			
			</div>
			<div id="bdy_cont5"><img src="images/bd_dnportion.jpg" /></div>		
		</div>
	</div>
	<div id="contain_footer"><span class="footercont">Copyright @ 2011 Euphern |  Simple Project Manager V2.1     </span></div>
</div>

</body>
</html>