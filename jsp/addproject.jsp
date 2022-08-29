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
<title>New Project</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/calendar.css">
<script type="text/javascript" src="js/customer.js"></script>
<script language="JavaScript" src="js/calendar_us.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="http://dev.jquery.com/view/trunk/plugins/autocomplete/jquery.autocomplete.css" type="text/css" />
<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/autocomplete/lib/jquery.bgiframe.min.js"></script>
<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/autocomplete/lib/jquery.dimensions.js"></script>
<script type="text/javascript" src="http://dev.jquery.com/view/trunk/plugins/autocomplete/jquery.autocomplete.js"></script>


<script type="text/javascript">
function cancel()
{
document.location='adminhome.html';
}
</script>
<script>
$(document).ready(function(){
var data=document.getElementById('projectnames').value.split("-");
$("#projectname").autocomplete(data);
});
</script>
</head>
<body>

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
				<div id="topicon2"><span class="top10">Add a Project</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">


			<form:form name="myform">
				<form:hidden path="projectnames" id="projectnames" />
				<table border="0" align="center">
				
					<tr>
						<td colspan="2"><label class="error">* marks fields are required.</label></td>
					</tr>
					
					<tr>
						<td></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">Project ID:</td>
						<td><form:input path="projectid" cssClass="loginsmall"
								readonly="true" /></td>
					</tr>
					<tr>
						<td class="menutext-h1" align="right">Project Name:</td>
						<td><form:input path="projectname" 
								cssClass="loginsmall" id="projectname" /><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="projectname" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Project Type:</td>
						<td><form:select path="projecttypeid" cssClass="loginsmall" cssStyle="width: 138px;">
								<form:option value="0">Select Type</form:option>
								<form:options items="${projectTypeNameList}" itemLabel="projecttypename"
									itemValue="projecttypeid" />
								</form:select><label class="error">*</label>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="projecttypeid" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Client Name:</td>
						<td><form:select path="clientid" cssClass="loginsmall" cssStyle="width: 138px;">				
								<form:options items="${clientNameList}" itemLabel="name"
									itemValue="clientid" />
							</form:select><label class="error">*</label>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="clientid" cssClass="error" /></td>
					</tr>

					<tr>
						<td class="menutext-h1" align="right">Description:</td>
						<td><form:textarea path="desccription" cssClass="loginsmall" cssStyle="width: 138px;" /><label
								class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="desccription" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">Start Date:</td>
						<td><form:input path="startdate"
								cssClass="loginsmall"  /> <script language="JavaScript">
								new tcal ({
								// form name
								'formname': 'myform',
								// input name
								'controlname': 'startdate'
								});

								</script><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="startdate" cssClass="error" /></td>
					</tr> 

					<tr>
						<td class="menutext-h1" align="right">Expected End Date:</td>
						<td><form:input path="expectedenddate"
								cssClass="loginsmall"  /> <script language="JavaScript">
								new tcal ({
								// form name
								'formname': 'myform',
									// input name
								'controlname': 'expectedenddate'
								});

								</script><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="expectedenddate" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">End Date:</td>
						<td><form:input path="enddate"
								cssClass="loginsmall"  /> <script language="JavaScript">
								new tcal ({
								// form name
								'formname': 'myform',
								// input name
								'controlname': 'enddate'
								});
								</script><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="enddate" cssClass="error" /></td>
					</tr> 

					<tr>
						<td class="menutext-h1" align="right">Technology:</td>
						<td><form:select path="technologyid" cssClass="loginsmall" cssStyle="width: 138px;">
								<form:option value="0">Select a Tech</form:option>
								<form:options items="${technologyNameList}" itemLabel="technologyname"
									itemValue="technologyid" />
							</form:select><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="technologyid" cssClass="error" /></td>
					</tr>
		
					<tr>
						<td class="menutext-h1" align="right">Project Status:</td>
						<td><form:select path="statusid" cssClass="loginsmall" cssStyle="width: 138px;">
								<form:option value="0">Select Status</form:option>
								<form:options items="${projectStatusNameList}" itemLabel="statusname"
									itemValue="statusid" />
							</form:select><label class="error">*</label></td>
					</tr>
					<tr>
						<td></td>
						<td><form:errors path="statusid" cssClass="error" /></td>
					</tr>

	

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input type="submit"
							value="Save Project" class="button_text" />&nbsp;&nbsp; <input
							type="button" value="Cancel" class="button_text"
							onclick="cancel()" />
						</td>

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