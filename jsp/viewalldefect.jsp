<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>New Defect </title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/csspopup.js"></script>

<style type="text/css">
<!--
#blanket {
   background-color:#666666;
   opacity: 0.5;   
   position:absolute;
   z-index: 9001; 
   top:0px;
   left:0px;
   width:100%;
}
#popUpDiv_prj {
	position:absolute;
	background-color:#eeeeee;
	width:250px;
	height:150px;
	margine-top:200px;
	z-index: 9002; 
	border: 3px solid #666666;
}

#popUpDiv_owr {
	position:absolute;
	background-color:#eeeeee;
	width:250px;
	height:150px;
	margine-top:200px;
	z-index: 9002; 
	border: 3px solid #666666;
}

#popUpDiv_def {
	position:absolute;
	background-color:#eeeeee;
	width:250px;
	height:150px;
	margine-top:200px;
	z-index: 9002; 
	border: 3px solid #666666;
}
-->
</style>

<script type="text/javascript">
function testreq()
{
var mode='<%=request.getParameter("mode")%>';
//alert(m);
if(mode=='p')
{
popup('popUpDiv_prj');
}
else if(mode=='o')
{
popup('popUpDiv_owr');
}
else if(mode=='d')
{
popup('popUpDiv_def');
}
}
</script>

</head>

<body onload="testreq()">

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
												 
												 
													<table width="100%" align="center" border="0">
													<tr>
													<td class="labelbold" align="center">Defect Id</td>
													<td class="labelbold" align="center">Project</td>
													<td class="labelbold" align="center">Priority</td>
													<td class="labelbold" align="center">Severity</td>
													<td class="labelbold" align="center">Assigned To</td>
													<td class="labelbold" align="center">Head Line</td>
													<td class="labelbold" align="center">State</td>
													<td class="labelbold" align="center">Submitted By</td>
													<td class="labelbold" align="center">Date</td>
													</tr>
													
													<c:forEach items="${defectList}" var="defect">
													<tr>
													<td class="labelsmall" align="center"><a href="defectmain.html?did=${defect.defectid}"> ${defect.defectid}</a></td>
													<td class="labelsmall" align="center">${defect.projectid}</td>
													<td class="labelsmall" align="center">${defect.priority}</td>
													<td class="labelsmall" align="center">${defect.severity}</td>
													<td class="labelsmall" align="center">${defect.ownerid}</td>
													<td class="labelsmall" align="center">${defect.headline}</td>
													<td class="labelsmall" align="center">${defect.state}</td>
													<td class="labelsmall" align="center">${defect.submitterid}</td>
													<td class="labelsmall" align="center">${defect.submiteddate}</td>
													</tr>
													</c:forEach>
													
													
													</table>
												 
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

<!-- Popup Div for Project -->
<div id="blanket" style="display:none;"></div>
	<div id="popUpDiv_prj" style="display:none;">
	<table width="100%" height="100%" border="0">
		<tr>
		<td height="100%" width="100%" valign="middle" align="center">
		<form:form action="viewalldefect.html" method="post">
		<table>
		<tr>
		<td class="redio_text" >Project Id</td>
		<td><input name="pid"/> </td>
		</tr>			
		<tr>
		<td height="20" colspan="2" align="center"><input type="submit" value="Submit" /> &nbsp; <input type="button" value="Cancel" /> </td>
		</tr>
		</table>
		</form:form>
		</td>
		</tr>			
	</table>
	</div>
	
	<!-- Popup Div for Owner -->
	<div id="blanket" style="display:none;"></div>
	<div id="popUpDiv_owr" style="display:none;">
	<table width="100%" height="100%" border="0">
		<tr>
		<td height="100%" width="100%" valign="middle" align="center">
		<form:form action="viewalldefect.html" method="post">
		<table>
		<tr>
		<td class="redio_text" >Owner Id</td>
		<td><input name="oid"/> </td>
		</tr>			
		<tr>
		<td height="20" colspan="2" align="center"><input type="submit" value="Submit" /> &nbsp; <input type="button" value="Cancel" /> </td>
		</tr>
		</table>
		</form:form>
		</td>
		</tr>			
	</table>
	</div>
	
	<!-- Popup Div for Defect -->
	<div id="blanket" style="display:none;"></div>
	<div id="popUpDiv_def" style="display:none;">
	<table width="100%" height="100%" border="0">
		<tr>
		<td height="100%" width="100%" valign="middle" align="center">
		<form:form action="viewalldefect.html" method="post">
		<table>
		<tr>
		<td class="redio_text" >Defect Id</td>
		<td><input name="did"/> </td>
		</tr>			
		<tr>
		<td height="20" colspan="2" align="center"><input type="submit" value="Submit" /> &nbsp; <input type="button" value="Cancel" /> </td>
		</tr>
		</table>
		</form:form>
		</td>
		</tr>			
	</table>
	</div>


</body>
</html>
