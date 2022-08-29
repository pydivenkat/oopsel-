<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.File"%>
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
												 <table>
												 <c:forEach items="${attachmentList}" var="atlist">
												 <tr><td>${atlist.filename}</td>
												 <td width="10">&nbsp;</td>
												 <td><a href="http://localhost:8080/ProjectManagementSystem/attachment/${atlist.filename}">View </a></td>
												 </tr>
												 </c:forEach>
												 
												 </table>
												 
												 									
												 <form action="upload.html" method="post" enctype="multipart/form-data" name="form1" id="form1">

   <table border="0">
      
       <tr>
	       <td>
		       Specify file: <input name="file" type="file" id="file" />
		   <td>
	   </tr>
	   
		 <tr>
		    <td align="center">
		    <c:choose>
				<c:when test="${ownerid == employeeid}" > 									
					 <input type="submit" name="Submit" value="Submit files" />
				</c:when>
				<c:otherwise>
					 <input type="submit" name="Submit" value="Submit files" disabled="disabled" /></input>
				</c:otherwise>
			</c:choose>
              
			</td>
		 </tr>
    </table>

 </form>
												 
												 
										
												 
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
