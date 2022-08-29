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
function deleteEmployee(employeeid,employeefname,employeelname)
{
var status=confirm("Are you really want to delete \nthe following Employee: \n"+employeefname+" "+employeelname);
if(status==true)
{
document.location="deleteemployee.html?employeeid="+employeeid;
}
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
				<div id="topicon2"><span class="top10">All Employee</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">
			
			
						  
						 
							<table cellpadding="0" cellspacing="1" width="820" border="0">	
						
<tr>
<td colspan="3"></td>
<td colspan="2" align="right" class="labeltext">
<c:if
					test="${isNewestEnabled}">
					<a href="viewallemployee.html?pageIndx=1" class="linktext">&lt;&lt;First</a>
				</c:if> <c:if test="${isNewerEnabled}">
					<a href="viewallemployee.html?pageIndx=${prvIndx}" class="linktext">&lt;Prev10</a>
				</c:if> <b>${pagingMsg}</b> <c:if test="${isOlderEnabled}">
					<a href="viewallemployee.html?pageIndx=${nxtIndx}" class="linktext">Next10&gt;</a>
				</c:if> <c:if test="${isOldestEnabled}">
					<a href="viewallemployee.html?pageIndx=${lastIndx}" class="linktext">Last&gt;&gt;</a>
				</c:if>
</td>
</tr>
<tr style="background-color:#63A100" height="30">
<td width="90" class="tblHtxt"><b>Employee ID</b></td>
<td width="120" class="tblHtxt"><b>Employee name</b></td>
<td width="80" class="tblHtxt"><b>Email</b></td>
<td width="80" class="tblHtxt"><b>Contact No.</b></td>
<td width="80" class="tblHtxt"><b>Address</b></td>
<td width="80" class="tblHtxt"><b>Job Role</b></td>
<td width="80" class="tblHtxt"><b>Joining date</b></td>
<td width="80" class="tblHtxt"><b>Action</b></td>
</tr>
<%boolean color=false; %>
<c:forEach items="${employeeList}" var="employee" begin="${startIndex}" end="${endIndex}">
<%if(color==false){ %>
<tr bgcolor="#DAF297">
<td class="tbltxt"> ${employee.employeeid}</td>
<td class="tbltxt"> ${employee.fname}&nbsp; ${employee.lname} </td>
<td class="tbltxt"> ${employee.email}</td>
<td class="tbltxt"> ${employee.contactno}</td>
<td class="tbltxt"> ${employee.address}</td>
<td class="tbltxt"> ${employee.jobrolename}</td>
<td class="tbltxt"> ${employee.joiningdate}</td>
<td>
<a href="editemployeeprofile.html?employeeid=${employee.employeeid}" class="tbltxt">Edit </a> &nbsp;&nbsp;
<a href="#" onclick="deleteEmployee('${employee.employeeid}','${employee.fname}','${employee.lname}')" class="tbltxt">Delete </a> 
 </td>
</tr>
<%
color=true;
} else{%>

<tr bgcolor="#E1F5FD">
<td class="tbltxt"> ${employee.employeeid}</td>
<td class="tbltxt"> ${employee.fname}&nbsp; ${employee.lname} </td>
<td class="tbltxt"> ${employee.email}</td>
<td class="tbltxt"> ${employee.contactno}</td>
<td class="tbltxt"> ${employee.address}</td>
<td class="tbltxt"> ${employee.jobrolename}</td>
<td class="tbltxt"> ${employee.joiningdate}</td>
<td>
<a href="editemployeeprofile.html?employeeid=${employee.employeeid}" class="tbltxt">Edit </a> &nbsp;&nbsp;
<a href="#" onclick="deleteEmployee('${employee.employeeid}','${employee.fname}','${employee.lname}')" class="tbltxt">Delete </a> 
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