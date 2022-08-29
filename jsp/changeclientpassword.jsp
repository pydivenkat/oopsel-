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
document.location='clienthome.html';
}
</script>
</head>
<body class="body">

<div class="mainwrapper">
<div class="mainscreen">
<div>header</div>
<div>employee header</div>
<div class="docDiv"><form:form>
	<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="40%" align="center" class="message_text_bold" colspan="3">Change
			Password</td>
		</tr>
		<tr>
			<td class="body_label" align="right">Enter Your Current
			Password: &nbsp;</td>
			<td><form:password path="password" size="16"
				cssClass="body_text" /><label class="error">*</label></td>
			<td><form:errors path="password" cssClass="error" /></td>
		</tr>
		<tr>
			<td class="body_label" align="right">Choose a Password: &nbsp;</td>
			<td><form:password path="newpassword" size="16"
				cssClass="body_text" /><label class="error">*</label></td>
			<td><form:errors path="newpassword" cssClass="error" /></td>
		</tr>
		<tr>
			<td class="body_label" align="right">Confirm Your Password:
			&nbsp;</td>
			<td><form:password path="confpassword" size="16"
				cssClass="body_text" /><label class="error">*</label></td>
			<td><form:errors path="confpassword" cssClass="error" /></td>
		</tr>
		<%
			if (request.getParameter("mode") != null) {
		%>
		<tr>
			<td></td>
			<td colspan="4" class="error"><fmt:message
				key="label.passworderrormsg" /></td>
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
				value="Change Password" class="button_text" />&nbsp;&nbsp; <input
				type="button" value="Cancel" class="button_text"
				onclick="canceledit()" /></td>

		</tr>
	</table>
</form:form></div>
<div>footer</div>
</div>
</div>


</body>
</html>