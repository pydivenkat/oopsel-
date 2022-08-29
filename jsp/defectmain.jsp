<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Defect Main </title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript">
function activeField()
{
document.getElementById('state').disabled=false;
document.getElementById('ownercomments').disabled=false;
document.getElementById('btnUpdate').disabled=false;
}
</script>

</head>

<body>

<div id="wrapper">
	<%@include file="header.jsp" %>
	<div id="contain_body">
		
		<div id="bodycontent" style="width: 1250px;">
			
			<table align="center" width="950" height="950"  border="0" cellspacing="0" cellpadding="0">
				  
				  <tr>
					<td valign="top" height="813">
						<table width="950" height="813" border="1" bordercolor="#ABCC6A" cellspacing="0" cellpadding="0">
						  <tr>
							<td height="813" valign="top">
								<table width="950" height="813" border="0" cellspacing="0" cellpadding="0">
								  <tr>
									<td height="52" valign="top" background="images/header_img.jpg" style="background-repeat:no-repeat;">
										<span class="wel">Welcome to SPM</span>
									</td>
								  </tr>
								  <tr>
									<td  height="38" valign="top" background="images/header_menu.jpg" style="background-repeat:no-repeat;">
										<!-- Start Defect Top Header -->
										<%@include file="defecttopheader.jsp" %>
										<!-- End defect Top header -->
									
									</td>
								  </tr>
								  <tr>
									<td valign="top" height="669">
										<table width="950" height="669" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td valign="top" height="662" width="5"></td>
											
											<!-- Start defect leftpanel -->
											
											<%@include file="defectleftpanel.jsp" %>	
												<!-- End defect leftpanel -->
												
											<td height="662" width="5"></td>
											<td valign="top" width="700">
											  <table width="700"  height="5"  cellspacing="0" cellpadding="0">
												<tr>
												 <td valign="top"  height="5"></td>
											   </tr>
											  </table>
											   
											   <!-- Start Defect Header -->
											   <%@include file="defectheader.jsp" %>
											   <!-- End Defect Header -->
											   
											   <table width="700"  height="562"  border="1" bordercolor="#ABCC6A"  cellspacing="0" cellpadding="0">
												<tr>
												 <td valign="top"  height="562">
												 
												 <!-- Start Main Body -->
												 
												 
										<form:form>
										<div id="defectMain">
										<table border="0" align="center">
										<tr height="10">
										<td colspan="4"></td>
										</tr>
								<tr>
									<td class="label_text">Id:</td>
									<td><form:input path="defectid" id="defectid" disabled='true' /></td>									
									<td class="label_text">Severity:</td>
									<td><form:select path="severity" disabled='true' cssClass="combo_style">
									<form:option value="Sev1">Sev1</form:option>	
									<form:option value="Sev2">Sev2</form:option>	
									<form:option value="Sev3">Sev3</form:option>	
									<form:option value="Sev4">Sev4</form:option>
									</form:select></td>
									</tr><tr>
									<td class="label_text">Owner:</td>
									<td>
									<form:select path="ownerid"	cssClass="body_text" cssStyle="width:160px;" disabled='true'>
									<form:option value="0">Select Owner</form:option>
									<form:options items="${employeeList}" itemLabel="fname" itemValue="employeeid"/>
									</form:select>	
									</td>
									<td class="label_text">Full Name:</td>
									<td>
									<input id="usreName" disabled='true' /></td>
								</tr>
								
								
								<tr>
									<td class="label_text">Headline:</td>
									<td colspan="3">
									<form:textarea path="headline" cols="56" rows="2"
										id="headline" disabled='true'></form:textarea></td>
								</tr>
								
								<tr>
									<td class="label_text">Project:</td>
									<td colspan="3">
									<form:select path="projectid" id="projectid" cssStyle="width:468px;" disabled='true'>
									<form:options items="${projectList}" itemLabel="projectname"
										itemValue="projectid"></form:options>
								</form:select>
								</td>
									
								</tr>
								
								<tr>
									<td class="label_text">State:</td>
									<td>
									<form:select path="state" disabled='true' cssClass="combo_style">
										<form:option value="Integration Failed">Integration Failed</form:option>
									<form:option value="Integration Tested">Integration Tested</form:option>
									<form:option value="Unit Tested">Unit Tested</form:option>
									<form:option value="Close">Close</form:option>
									<form:option value="Fixed">Fixed</form:option>
									<form:option value="Opened">Opened</form:option>
									<form:option value="Assigned">Assigned</form:option>
									<form:option value="Submitted">Submitted</form:option>
									</form:select></td>
									
									<td class="label_text">Priority:</td>
									<td>
									<form:select path="priority" cssClass="combo_style" disabled='true'>
									<form:option value="P1">P1</form:option>	
									<form:option value="P2">P2</form:option>	
									<form:option value="P3">P3</form:option>
									<form:option value="P4">P4</form:option>
									</form:select></td>
									
									
									</tr>
										
							
								<tr>
									<td class="label_text">
									Description:</td>
									<td colspan="4"><form:textarea path="description"
										id="description" cols="56" rows="3" disabled='true'></form:textarea>
									</td>
								</tr>
								
								<tr>
									<td class="label_text">
									Comments:</td>
									<td colspan="4"><form:textarea path="ownercomments"
										id="ownercomments" cols="56" rows="3" disabled='true'></form:textarea>
									</td>
								</tr>
								
								<tr>
									<td colspan="4" align="center">
									
									<c:choose>
										<c:when test="${ownerid == employeeid}" > 									
											<input type="button" value="Edit" onClick="activeField()" class="button_text" />
										</c:when>
										<c:otherwise>
											<input type="button" value="Edit" onClick="activeField()" class="button_text" disabled="disabled"></input>
										</c:otherwise>
									</c:choose>
									<input type="submit" value="Update" id="btnUpdate"
										disabled="disabled" class="button_text">
									</td>
								</tr>
							</table>
							</div>							
							
								</form:form>
												 
												 <!-- End Main Body -->
												 </td>
											   </tr>
											   </table>
											</td>
											<td valign="top" height="662" width="5"></td>
										  </tr>
										 
										</table>
				
									</td>
								  </tr>
								  
								</table>			</td>
						  </tr>
						</table>	</td>
				  </tr>
				  <tr>
					<td valign="top" height="62"></td>
				  </tr>
				</table>
		
		</div>
	</div>
	<%@include file="footer.jsp" %>
</div>
</body>
</html>
