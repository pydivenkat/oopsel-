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
<title>Edit Todos</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/calendar.css">
<script type="text/javascript" src="js/customer.js"></script>
<script language="JavaScript" src="js/calendar_us.js"></script>
<script type="text/javascript">
function canceledit()
{
document.location='adminhome.html';
}

</script>
</head>
<body class="body">

<div id="wrapper">
	<%if(session.getAttribute("adminUsername")!=null){ %>
		<%@include file="adminheader.jsp" %>
	<%}else if(session.getAttribute("employeeid")!=null){ %>
		<%@include file="header.jsp" %>
	<%} %>
	<div id="contain_body">
		<div id="leftmenu">
			<%if(session.getAttribute("adminUsername")!=null){ %>
				<%@include file="adminleftmenu.jsp" %>
			<%}else if(session.getAttribute("employeeid")!=null){ %>
				<%@include file="empleftmenu.jsp" %>
				<c:set var="isDisble" value="true"/>
			<%} %>
	  	</div>
	  
		<div id="bodycontent">
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Edit Todos</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">
			
			
			<form:form name="myform">
				<table border="0" align="center">
				
					<tr>
						<td colspan="2"><label class="error">* marks fields are required.</label></td>
					</tr>
					
					<tr>
						<td></td>
					</tr>
					
					<tr>
						<td class="menutext-h1" align="right">Employee Id:</td>
						<td>
						<form:select path="assignto" cssClass="loginsmall" cssStyle="width: 138px;" disabled="${isDisble}">
						<form:option value="0">Select Employee</form:option>
							<form:options items="${employeeList1}" itemLabel="employeename"
								itemValue="employeeid" />
						</form:select><label class="error">*</label>
						</td>
					</tr>
					
					<tr>
						<td></td>
						<td><form:errors path="assignto" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td class="menutext-h1" align="right">Project Id:</td>
						<td>
						<form:select path="projectid" cssClass="loginsmall" cssStyle="width: 138px;" disabled="${isDisble}">
						<form:option value="0">Select Project</form:option>
							<form:options items="${projectList1}" itemLabel="projectname"
								itemValue="projectid" />
						</form:select><label class="error">*</label>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="projectid" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Heading:</td>
						<td><form:input path="headline"
								cssClass="loginsmall" disabled="${isDisble}"/><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="headline" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Description:</td>
						<td><form:textarea path="description"
							cssClass="loginsmall" rows="3" cols="25" disabled="${isDisble}"/><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="description" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td class="menutext-h1" align="right">Status:</td>
						<td>
						<form:select path="status" cssClass="loginsmall" cssStyle="width: 138px;">
							<form:option value="0">Pending</form:option>
							<form:option value="1">Complete</form:option>	
						</form:select><label class="error">*</label>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="status" cssClass="error" /></td>
					</tr>
					

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="submit"
								value="Save Changes" class="button_text" />&nbsp;&nbsp; <input
							type="button" value="Cancel" class="button_text"
							onclick="canceledit()" /></td>

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