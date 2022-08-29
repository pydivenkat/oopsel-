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
<title>Client</title>
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
				<div id="topicon2"><span class="top10">Client Details</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_4">

			


				<table border="0" align="center" width="500" class="tbltext">
					<c:forEach items="${clientList}" var="client">
		
					<tr>
						<td width="300">Client ID : </td>
						<td width="200">${client.clientid }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					<tr>
						<td  >Client Name : </td>
						<td>${client.name }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					
					<tr>
						<td>Projects:</td>
						<td>
						<table class="tbltext" align="left">
							<c:forEach items="${client.projectlist}" var="project">
							<tr>
								<td><li>${project.projectname}</li></td>
							</tr>
							</c:forEach>			
						</table>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					
					<tr>
						<td>Contact Person : </td>
						<td>${client.contactperson }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					

					<tr>
						<td  >Address : </td>
						<td>${client.address }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					
					<tr>
						<td  >Zip : </td>
						<td>${client.zip }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					<tr>
						<td  >Country : </td>
						<td>${client.country }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		

					<tr>
						<td >Email Id : </td>
						<td>${client.email }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>		
		
					<tr>
						<td>URL : </td>
						<td>${client.url }</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		

					<tr>
						<td  >Telephone 1 : </td>
						<td>${client.tel1 }</td>
					</tr>
					
					
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					<tr>
						<td  >Telephone 2 : </td>
						<td>${client.tel2 }</td>
					</tr>
					
					
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					<tr>
						<td  >Description : </td>
						<td>${client.description }</td>
					</tr>
					
					
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		
					

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="button" value="Back" class="button_text" onclick="cancel()" />&nbsp;&nbsp;&nbsp;
							<a href="editemployeeprofile.html" class="menutxt2">Edit Profile</a>&nbsp;&nbsp;&nbsp;
							<a href="changeemployeepassword.html" class="menutxt2">Change Password</a>
						</td>
					</tr>
					</c:forEach>
				</table>
				
				
				
			</div>
			<div id="bdy_cont5"><img src="images/bd_dnportion.jpg" /></div>		
		</div>
	</div>
	<div id="contain_footer"><span class="footercont">Copyright @ 2011 Euphern |  Simple Project Manager V2.1     </span></div>
</div>

</body>
</html>