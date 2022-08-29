<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administrator</title>
<link rel="stylesheet" href="css/style.css" type="text/css"  />
<script type="text/javascript">
function deleteProject(projectid,projectname)
{
var status=confirm("Are you really want to delete \nthe following Project: \n"+projectname);
if(status==true)
{
document.location="deleteproject.html?projectid="+projectid;
}
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
				<div id="topicon2"><span class="top10">All Projects</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">					  

					  
						  
						 
							<table cellpadding="0" cellspacing="3" width="820" border="0">
<tr>
<td></td>
<td colspan="8" align="right" class="labeltext">
<c:if
					test="${isNewestEnabled}">
					<a href="viewallprojects.html?pageIndx=1" class="linktext">&lt;&lt;First</a>
				</c:if> <c:if test="${isNewerEnabled}">
					<a href="viewallprojects.html?pageIndx=${prvIndx}" class="linktext">&lt;Prev10</a>
				</c:if> <b>${pagingMsg}</b> <c:if test="${isOlderEnabled}">
					<a href="viewallprojects.html?pageIndx=${nxtIndx}" class="linktext">Next10&gt;</a>
				</c:if> <c:if test="${isOldestEnabled}">
					<a href="viewallprojects.html?pageIndx=${lastIndx}" class="linktext">Last&gt;&gt;</a>
				</c:if>
</td>
</tr>
<tr style="background-color:#63A100" height="30">
<td width="60" class="tblHtxt">Project ID</td>
<td width="80" class="tblHtxt">Project name</td>
<td width="80" class="tblHtxt">Client name</td>
<td width="80" class="tblHtxt">Description</td>
<td width="60" class="tblHtxt">Start date</td>
<td width="80" class="tblHtxt">Expected end date</td>
<td width="60" class="tblHtxt">End date</td>
<td width="60" class="tblHtxt">Technology</td>
<td width="50" class="tblHtxt">Status</td>
<td width="80" class="tblHtxt">Action</td>
</tr>
<%boolean color=false; %>
<c:forEach items="${projectList}" var="project" begin="${startIndex}" end="${endIndex}">
<%if(color==false){ %>
<tr bgcolor="#DAF297">
<td><a href="projectdetails.html?projectid=${project.projectid}" class="tbltxt">${project.projectid}</a></td>
<td class="tbltxt"> ${project.projectname}</td>
<td class="tbltxt"> ${project.clientname}</td>
<td class="tbltxt"> ${project.desccription}</td>
<td class="tbltxt"> ${project.startdate}</td>
<td class="tbltxt"> ${project.expectedenddate}</td>
<td class="tbltxt"> ${project.enddate}</td>
<td class="tbltxt"> ${project.technologyname}</td>
<td class="tbltxt"> ${project.statusname}</td>
<td>
<a href="editproject.html?projectid=${project.projectid}" class="tbltxt">Edit </a> &nbsp;&nbsp;
<a href="#" onclick="deleteProject('${project.projectid}','${project.projectname}')" class="tbltxt">Delete </a> 
 </td>
</tr>
<%
color=true;
} else{%>

<tr bgcolor="#E1F5FD">
<td><a href="projectdetails.html?projectid=${project.projectid}" class="tbltxt">${project.projectid}</a></td>
<td class="tbltxt"> ${project.projectname}</td>
<td class="tbltxt"> ${project.clientname}</td>
<td class="tbltxt"> ${project.desccription}</td>
<td class="tbltxt"> ${project.startdate}</td>
<td class="tbltxt"> ${project.expectedenddate}</td>
<td class="tbltxt"> ${project.enddate}</td>
<td class="tbltxt"> ${project.technologyname}</td>
<td class="tbltxt"> ${project.statusname}</td>
<td>
<a href="editproject.html?projectid=${project.projectid}" class="tbltxt">Edit </a> &nbsp;&nbsp;
<a href="#" onclick="deleteProject('${project.projectid}','${project.projectname}')" class="tbltxt"> Delete </a> 
 </td>
</tr>
<%color=false;} %>
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