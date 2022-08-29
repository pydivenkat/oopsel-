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
<title>Edit Client Profile</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/customer.js"></script>

<script language="JavaScript" src="js/calendar_us.js"></script>
<link rel="stylesheet" href="css/calendar.css">

<script type="text/javascript">
function canceledit()
{
document.location='clienthome.html';
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
				<div id="topicon2"><span class="top10">Add Client</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">


			<form:form name="testform">
				<table border="0" align="center">
					
					<tr>
						<td class="menutext-h1" align="right">Client ID:</td>
						<td><form:input path="clientid" cssClass="loginsmall"
								readonly="true" /></td>
					</tr>
					<tr>
						<td class="menutext-h1" align="right">Name:</td>
						<td><form:input path="name" cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="name" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Contact Person:</td>
						<td><form:input path="contactperson" 
								cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="contactperson" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Password:</td>
						<td><form:password path="password"
								cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="password" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">Address:</td>
						<td><form:input path="address" cssClass="loginsmall" /><label
								class="error" /></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="address" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">ZIP:</td>
						<td><form:input path="zip" cssClass="loginsmall" /><label
								class="error" /></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="zip" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">Country:</td>
						<td><form:input path="country" cssClass="loginsmall" /><label
								class="error" /></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="country" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Email:</td>
						<td><form:input path="email" cssClass="loginsmall" /><label
							class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="email" cssClass="error" /></td>
					</tr>
					<tr>
						<td class="menutext-h1" valign="top" align="right">URL:</td>
						<td valign="top"><form:input path="url"
							cssClass="loginsmall" /><label class="error" /> <br>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="url" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" valign="top" align="right">Tel1:</td>
						<td valign="top"><form:input path="tel1"
							cssClass="loginsmall" /><label class="error" /> <br>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="tel1" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" valign="top" align="right">Tel2:</td>
						<td valign="top"><form:input path="tel2" cssClass="loginsmall" /><label class="error" /> <br> </td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="tel2" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" valign="top" align="right">Fax:</td>
						<td valign="top"><form:input path="fax" cssClass="loginsmall" /><label class="error" /> <br>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="fax" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" valign="top" align="right">Description:</td>
						<td valign="top"><form:input path="description" cssClass="loginsmall" /><label class="error" /> <br>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="description" cssClass="error" /></td>
					</tr>

		

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="submit"
							value="Save Profile" class="button_text" />&nbsp;&nbsp; <input
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