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
<title>Add Employee</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/calendar.css">
<script type="text/javascript" src="js/customer.js"></script>
<script language="JavaScript" src="js/calendar_us.js"></script>
<script type="text/javascript">

function canceledit()
{
document.location='adminhome.html';
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
	<%@include file="adminheader.jsp" %>
	<div id="contain_body">
		<div id="leftmenu">
			
			<%@include file="adminleftmenu.jsp" %>
						
	  	</div>
	  
		<div id="bodycontent">
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Add an Employee</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_3">
			
			
			<form:form name="myform" id="myform">
				<table border="0" align="center" width="415">
					
					<tr>
						<td colspan="2"><label class="error">* marks fields are required.</label></td>
					</tr>
					
					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="170"><span class="menutext-h1">Employee ID:</span></td>
						<td width="245"><form:input path="employeeid" cssClass="loginsmall"
								readonly="true" /></td>
					</tr>
					<tr>
						<td align="right"><span class="menutext-h1">First Name:</span></td>
						<td><form:input path="fname"
								cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="fname" cssClass="error" /></td>
					</tr>

					<tr>
						<td   align="right"><span class="menutext-h1">Last Name:</span></td>
						<td><form:input path="lname"
								cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="lname" cssClass="error" /></td>
					</tr>

					<tr>
						<td   align="right"><span class="menutext-h1">Password:</span></td>
						<td><form:password path="password"
							cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="password" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td   align="right"><span class="menutext-h1">Confirm Password:</span></td>
						<td><form:password path="confpassword"
							cssClass="loginsmall" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="confpassword" cssClass="error" /></td>
					</tr>

					<tr>
						<td   align="right"><span class="menutext-h1">Email:</span></td>
						<td><form:input path="email" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="email" cssClass="error" /></td>
					</tr>
					<tr>
						<td align="right"><span class="menutext-h1">Contact No.:</span></td>
						<td valign="top"><form:input path="contactno"
							cssClass="loginsmall" /><label class="error">*</label> <br>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="contactno" cssClass="error" /></td>
					</tr>

					<tr>
						<td align="right"><span class="menutext-h1">Address:</span></td>
						<td><form:input path="address" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="address" cssClass="error" /></td>
					</tr>

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
						<td   align="right"><span class="menutext-h1">Select Joining Date:</span></td>
						<td><form:input path="joiningdate"
								cssClass="loginsmall"  /> <script language="JavaScript">
								new tcal ({
								// form name
								'formname': 'myform',
								// input name
								'controlname': 'joiningdate'
								});

								</script><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="joiningdate" cssClass="error" /></td>
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
											<tr height="30">
												<%} %>
												<td align="center">
													<input type="checkbox" id="${permission.permissionid}"
														 value="${permission.permissionid}" onclick="getPermissionId()" />
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
					
					
					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					
					<tr>
						<td align="right"><span class="menutext-h1">Basic Pay:</span></td>
						<td><form:input path="basicpay" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="basicpay" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td align="right"><span class="menutext-h1">HR Allowance:</span></td>
						<td><form:input path="hra" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="hra" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td align="right"><span class="menutext-h1">Provident Fund:</span></td>
						<td><form:input path="pf" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="pf" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td align="right"><span class="menutext-h1">Proffessional Tax:</span></td>
						<td><form:input path="ptax" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="ptax" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td align="right"><span class="menutext-h1">Dearness Allowance:</span></td>
						<td><form:input path="da" cssClass="loginsmall" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="da" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td align="right"><span class="menutext-h1">Gross Salary:</span></td>
						<td><form:input path="gross" cssClass="loginsmall" disabled="true" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="gross" cssClass="error" /></td>
					</tr>
					
					
					
					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="submit"
								value="Save Profile" class="button_text"  />&nbsp;&nbsp; <input
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