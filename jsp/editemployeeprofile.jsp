<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%!
	int counter=0; 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Employee Profile</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/customer.js"></script>
<script type="text/javascript">
function canceledit()
{
document.location='employeehome.html';
}

var x=new Array();
var j=0;

function getPermissionId(){
var deleteItems="";
var deleteItemsName="";
var aa= document.getElementById('myform');
for (var i =0; i < aa.elements.length; i++) 
{
if(aa.elements[i].checked){
var n=aa.elements[i].name;
var a=aa.elements[i].value;
if(!isNaN(a)){ 
x[j]=a;
deleteItems=deleteItems+aa.elements[i].value+" ";
j++;
}
}
}
document.getElementById('permissionids').value=deleteItems;
alert(document.getElementById('permissionids').value);
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
			<%} %>
	  	</div>
	  
		<div id="bodycontent">
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Edit Profile</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">


			<form:form name="myform" id="myform">
				<table border="0" align="center">
					
					<tr>
						<td class="menutext-h1" align="right">Employee ID:</td>
						<td><form:input path="employeeid" cssClass="loginsmall" readonly="true" /></td>
					</tr>
					<tr>
						<td class="menutext-h1" align="right">First Name:</td>
						<td><form:input path="fname" cssClass="loginsmall"	
								readonly="true" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Last Name:</td>
						<td><form:input path="lname" cssClass="loginsmall"	
									readonly="true" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Email:</td>
						<td><form:input path="email" cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="email" cssClass="error" /></td>
					</tr>
					<tr>
						<td class="menutext-h1" valign="top" align="right">Contact No.:</td>
						<td valign="top"><form:input path="contactno"
							cssClass="loginsmall" /><label class="error">*</label> <br>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="contactno" cssClass="error" /></td>
					</tr>
					<tr>
						<td class="menutext-h1" align="right">Address:</td>
						<td><form:input path="address" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="address" cssClass="error" /></td>
					</tr>					
					
					
					<%if(session.getAttribute("adminUsername")!=null){ %>
					
					<tr>
						<td   align="right"><span class="menutext-h1">Job Role:</span></td>
						<td><form:select path="jobroleid" cssClass="loginsmall" cssStyle="width: 138px;">
						<form:option value="0">Select Role</form:option>
							<form:options items="${jobRoleList}" itemLabel="jobrolename"
								itemValue="jobroleid" />
						</form:select><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="jobroleid" cssClass="error" /></td>
					</tr>
						
					<tr>
						<td height="120" align="right"><span class="menutext-h1">Permissions:</span></td>
						<td>
							<table border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<table border="0" cellspacing="0" cellpadding="0" height="180">
															
											<tr height="30">
												<td>
											</tr>
											<tr height="30">
												<td><span class="menutext-h1">Employee</span></td>
											</tr>
											
											<tr height="30">
												<td><span class="menutext-h1">Project</span></td>
											</tr>
											
											<tr height="30">
												<td><span class="menutext-h1">Client</span></td>
											</tr>
											
											<tr height="30">
												<td><span class="menutext-h1">Defect</span></td>
											</tr>
											
											<tr height="30">
												<td><span class="menutext-h1">Todos</span></td>
											</tr>
											
										</table>
									</td>
									<td>
										<table border="0" cellspacing="0" cellpadding="0" height="180" width="180">
											<tr height="30">
												<td width="45"><span class="menutext-h1">View</span></td>
												<td width="45"><span class="menutext-h1">Add</span></td>
												<td width="45"><span class="menutext-h1">Edit</span></td>
												<td width="45"><span class="menutext-h1">Delete</span></td>
											</tr>
								
											<c:forEach items="${permissionList}" var="permission">
											
												<%counter++;%>
												<%if(counter==1||counter==5||counter==9||counter==13) {%>
											<tr>
												<%} %>
												<td align="center">
													<c:if test="${permission.status == 1}">
														<input checked="checked" type="checkbox" id="${permission.permissionid}"
														 	value="${permission.permissionid}"  onclick="getPermissionId()" />
														 	
													</c:if>
													
													<c:if test="${permission.status == 0}">
														<input type="checkbox" id="${permission.permissionid}"
														 	value="${permission.permissionid}"  onclick="getPermissionId()" />
														 	
													</c:if>
												</td>
												<%if(counter==4||counter==8||counter==12||counter==15) {%>
											</tr>
												<%} %>
								
											</c:forEach>
											<% counter=0; %>
											
										</table>
									</td>
								</tr>
							</table>								
						</td>
					</tr>

					<form:hidden path="permissionids" />	
						
					<%} %>

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="submit"
							value="Save Profile" class="button_text" onclick="getPermissionId()" />&nbsp;&nbsp; <input
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