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
<title>Project Details</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script type="text/javascript">
function cancel()
{
document.location='viewallprojects.html';
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
				<div id="topicon2"><span class="top10">Project Details</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">



						  
			
				<table border="0" align="center" width="500" class="tbltext">
					<c:forEach items="${projectList}" var="project">
		
					<tr>
						<td width="300">Project ID:</td>
						<td width="200">${project.projectid}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
					
					<tr>
						<td  >Project Name:</td>
						<td>${project.projectname}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		

					<tr>
						<td >Project Type:</td>
						<td>${project.projecttypename}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		

					<tr>
						<td>Client Name:</td>
						<td>${project.clientname}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		

					<tr>
						<td  >Description:</td>
						<td>${project.desccription}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		
		
					<tr>
						<td>Start Date:</td>
						<td>${project.startdate}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		

					<tr>
						<td  >Expected End Date:</td>
						<td>${project.expectedenddate}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		
		
					<tr>
						<td  >End Date:</td>
						<td>${project.enddate}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		

					<tr>
						<td>Technology:</td>
						<td>${project.technologyname}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>
		
					<tr>
						<td>Employee:</td>
						<td>
						<table class="tbltext" align="left">
							<c:forEach items="${project.employeelist}" var="employee">
							<tr>
								<td>${employee.employeename}</td>
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
						<td>Project Status:</td>
						<td>${project.statusname}</td>
					</tr>
					
					<tr>
						<td colspan="2" height="1" bgcolor="red">
						</td>
					</tr>

					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					<tr>
						
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