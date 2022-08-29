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
<title>Add Type</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script type="text/javascript">
function cancel()
{
document.location='adminhome.html';
}
</script>
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
				<div id="topicon2"><span class="top10">Add Project Type</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">


			<form:form name="testform">
				<table border="0" align="center">
		
		
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>

					<%
					if(request.getParameter("mode")!= null &&  request.getParameter("mode").equals("error")) {
					%>
					<tr>
						<td class="error1" align="center" colspan="2"> <fmt:message key="label.duplicatetype"/>  </td>
					</tr>
					<%
					}
					%>
		
					<tr>
						<td class="menutext-h1" align="right">Project Type:</td>
						<td><form:input path="projecttypename" cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td width="200"><form:errors path="projecttypename" cssClass="error" /></td>
					</tr>
		

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="submit"
							value="Save" class="button_text" />&nbsp;&nbsp; <input
							type="button" value="Cancel" class="button_text"
							onclick="cancel()" /></td>

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
