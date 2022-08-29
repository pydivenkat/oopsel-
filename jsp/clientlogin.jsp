<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Client Login</title>
<link rel="stylesheet" href="css/style.css" type="text/css"
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
<div class="mainDiv">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr height="50">
		<td></td>
	</tr>
	<tr>
		<td valign="top">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top">
				<table width="1122" border="0" cellspacing="0" cellpadding="0"
					align="center">
					<tr>
						<td width="1" bgcolor="#DCDCDC" rowspan="5"></td>
						<td align="center" valign="middle" height="300"
							style="background: url(images/td_bg.jpg)">
							<form:form name="myform">
							<table cellpadding="0" cellspacing="0" border="0"
								style="background: url(images/table_bg.jpg)" width="612"
								height="253">
								<tr>
									<td colspan="4" height="50"></td>
								</tr>
								<tr>
									<td width="120"></td>
									<td class="loginbold2">Username</td>
									<td class="loginbold2">:</td>
									<td><form:input path="clientid" cssClass="loginsmall" /></td>
									<td><form:errors path="clientid" cssClass="error" /></td>
									<td width="20"></td>
								</tr>

								<tr>
									<td></td>
									<td class="loginbold2">Password</td>
									<td class="loginbold2">:</td>
									<td><form:password path="password" cssClass="loginsmall" />
									</td>
									<td><form:errors path="password" cssClass="error" /></td>
									<td></td>
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
									<td colspan="6" height="15"></td>
								</tr>
								<tr>

									<td colspan="4" align="center">
									<table>
										<td
											style="width: 70px; height: 28px; background: url(images/down_btn.jpg) no-repeat">
										<a href="javascript: submitform()" class="button_text_reg"
											border="0"> Login </a></td>
										<td width="10"></td>
										<td
											style="width: 70px; height: 28px; background: url(images/cancel.jpg) no-repeat">
										<a href="#" onclick="cancelLogin()" class="button_text_reg"
											border="0"> Cancel </a></td>
									</table>

									</td>

								</tr>
								<tr>
									<td colspan="6" height="20"></td>
								</tr>
								<tr>
									<td height="1" colspan="7" valign="top" bgcolor="#dddddd"></td>
								</tr>
							</table>
						</form:form></td>
						<td width="1" bgcolor="#DCDCDC" rowspan="5"></td>
					</tr>

					<tr>
						<td height="1" bgcolor="#DCDCDC"></td>
					</tr>
				</table>
				 </td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>
</div>
</body>
</html>
