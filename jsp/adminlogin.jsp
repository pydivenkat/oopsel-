<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Admin Login</title>
<link rel="stylesheet" href="css/style_admin.css" type="text/css"
	media="screen" />
<script type="text/javascript">
function submitform()
{
  document.forms["myform"].submit();  
}

function cancelLogin()
{
document.location='home.html';
}
</script>
</head>

<body style="margin: 0px;">
<table width="522" height="521" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tr>
		<td width="470" height="86"></td>
	  </tr>
	  <tr>
		<td valign="top" height="435" style="background:url(images/login.jpg) no-repeat;">
		<form:form name="myform">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="19%" height="170">&nbsp;</td>
    <td width="15%">&nbsp;</td>
    <td width="50%">&nbsp;</td>
  </tr>
  <tr>
    <td height="35"></td>
    <td>  <span class="menutext-h1">Username:</span></td>
    <td align="left"> <form:input path="username" cssClass="loginsmall" cssStyle="width:170px;" /></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td align="left"><form:errors path="username" cssClass="error" /></td>
  </tr>
  <tr>
    <td height="35">&nbsp;</td>
    <td><span class="menutext-h1">Password:</span></td>
    <td align="left"> <form:password path="password" cssClass="loginsmall" cssStyle="width:170px;" /></td>
  </tr>
  <%
								if (request.getParameter("mode") != null) {
								%>
								<tr>
									<td></td>
									<td colspan="4" class="error"><fmt:message
										key="label.loginerrormsg" /></td>
									<td></td>
								</tr>
								<%
								}
								%>
  
  <tr>
    <td height="53">&nbsp;</td>
    <td>&nbsp;</td>
    <td><input name="" type="submit"  value="LOGIN" style="width:120px; height:55px; border:0; 
	background:url(images/login_btn.png) repeat; font-family:Arial; font-weight:bold; color:#fff; " /></td>
  </tr>
</table>
</form:form>
		</td>
	  </tr>
</table>
</body>
</html>
