<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Employee Login</title>

<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
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

<style type="text/css">
<!--
body {
	margin: 0px;
	padding:0px;
}
-->
</style>
</head>

<body style="margin: 0px;">
<div style="width:100%; height:100%; float:left;">
<div style="width:100%; height:100%;position:absolute;"><div id="wrapper">
	<div id="contain_header"><img src="images/header.jpg" alt=""/></div>
	<div id="contain_menu">
		<div class="menudiv"><img src="images/cus_icon.jpg" /></div>
		<div class="menudiv1"><a href="#" class="menutxt">Customers</a></div>
		
		<div class="menudiv"><img src="images/pro_icon.jpg" /></div>
		<div class="menudiv2"><a href="#" class="menutxt">Projects</a></div>
		
		<div class="menudiv"><img src="images/todo_icon.jpg" /></div>
		<div class="menudiv3"><a href="#" class="menutxt">Todos</a></div>
		
		<div class="menudiv"><img src="images/profile_icon.jpg" /></div>
		<div class="menudiv4"><a href="#" class="menutxt">Profile</a></div>
		
		<div class="menudiv"><img src="images/knowledge_icon.jpg" /></div>
		<div class="menudiv5"><a href="#" class="menutxt">Knowledgebase</a></div>
		
		<div class="menudiv"><img src="images/profile_icon.jpg" /></div>
		<div class="menudiv4"><a href="#" class="menutxt">Login</a></div>
	</div>
	<div id="contain_body_login">
		<div id="leftmenu">
			
			<div id="customer">
				<div id="custimg"><img src="images/small_icon1.jpg"  /></div>
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
			<div id="customer">
				<div id="custimg"><img src="images/small_icon2.jpg"  /></div>
				<div id="custtxt"><a href="#" class="custtxt">Projects</a></div>
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
			
	  </div>
		<div id="bodycontent_login">
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Top 10 Users</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4"></div>
			<div id="bdy_cont5"><img src="images/bd_dnportion.jpg" /></div>
			
			
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Top 10 Projects</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
	  </div>
	</div>
	<div id="contain_footer"><span class="footercont">Copyright @ 2011 Euphern |  Simple Project Manager V2.1     </span></div>
</div></div>
<div style="width:100%; height:100%;  position:absolute; background:url(images/image55.png) repeat;"></div>
<div style=" width:100%; height:200px; position:absolute;">
<div style="width:370px; height:300px; border:8px solid #CCCCCC;background-color:#FFFFFF; position:absolute;top:200px; left:600px; ">
<form:form name="myform">
<table width="370" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" colspan="3" align="right"></td>
    </tr>
   <tr>
    <td width="18" height="47">&nbsp;</td>
    <td width="91" align="center"><img src="images/login-icon.jpg" /></td>
	  <td width="261" class="logintext">LOGIN</td>
  </tr>
   <tr>
    <td height="35"></td>
    <td>  <span class="menutext-h1">Role:</span></td>
    <td align="left">
    <form:select path="roleid" cssClass="loginsmall" cssStyle="width:205px; height:25px;">
    	<form:option value="2">Employee</form:option>
		<form:option value="1">Admin</form:option>
		<form:option value="3">Client</form:option>		
    </form:select>
		
	</td>
  </tr>
  <tr>
  <td></td>
  <td></td>
  </tr>
  <tr>
    <td height="35"></td>
    <td>  <span class="menutext-h1">Email:</span></td>
    <td align="left"><form:input path="userid" cssClass="loginsmall" cssStyle="width:200px; height:21px;" /></td>
  </tr>
  <tr>
  <td></td>
  <td><form:errors path="userid" cssClass="error" /></td>
  </tr>
  <tr>
    <td height="35">&nbsp;</td>
    <td><span class="menutext-h1">Password:</span></td>
    <td align="left"><form:password path="password" cssClass="loginsmall" cssStyle="width:200px; height:21px;" /></td>
  </tr>
  <tr>
  <td></td>
  <td><form:errors path="password" cssClass="error" /></td>
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
    <td><a href="#" onclick="submitform()"> <img src="images/login_btn.jpg"  border="0"/> </a></td>
  </tr>
</table>
</form:form>
</div>
</div>


</div>
</body>
</html>
