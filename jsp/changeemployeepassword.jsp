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
<title>Change Password</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/customer.js"></script>
<script type="text/javascript">
function canceledit()
{
document.location='employeehome.html';
}
</script>
</head>
<body class="body">

<div id="wrapper">
	<%@include file="header.jsp" %>
	<div id="contain_body">
		<div id="leftmenu">
			<%@include file="empleftmenu.jsp" %>
		</div>
			<div id="bodycontent">
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Employee Details</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">
			
			<form:form>
				<table border="0" align="center">
		
				<tr>
					<td class="menutext-h1" align="right">Enter Your Current Password: &nbsp;</td>
					<td><form:password path="password" cssClass="loginsmall" />
						<label class="error">*</label></td>					
				</tr>
					
				<tr>
					<td></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td class="menutext-h1" align="right">Choose a Password: &nbsp;</td>
					<td><form:password path="newpassword" cssClass="loginsmall" />
						<label class="error">*</label></td>					
				</tr>
				
				<tr>
					<td></td>
					<td><form:errors path="newpassword" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td class="menutext-h1" align="right">Confirm Your Password: &nbsp;</td>
					<td><form:password path="confpassword" cssClass="loginsmall" />
						<label class="error">*</label></td>					
				</tr>
				
				<tr>
					<td></td>
					<td ><form:errors path="confpassword" cssClass="error" /></td>
				</tr>
				
				<%
					if (request.getParameter("mode") != null) {
				%>
				
				<tr>
					<td></td>
					<td colspan="4" class="error"><fmt:message key="label.passworderrormsg" /></td>
					<td></td>
				</tr>
				<%
				}
				%>
				<tr>
					<td colspan="2" height="20"></td>
				</tr>
				
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="Change Password" class="button_text" />&nbsp;&nbsp;
						<input type="button" value="Cancel" class="button_text"
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