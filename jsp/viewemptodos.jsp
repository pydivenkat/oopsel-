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
<title>Employee</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript">
function cancel()
{
document.location='employeehome.html';
}

function deleteTodos(todosid,headline)
{
var status=confirm("Are you sure to delete this task: "+headline+" ?");
if(status==true)
{
document.location="deletetodos.html?mode=delete&todosid="+todosid;
}
}
</script>
</head>
<body class="body">

<div id="wrapper">
	<%@include file="header.jsp" %>
	<div id="contain_body">
		<div id="leftmenu">
			<%@include file="empleftmenu.jsp" %>
		</div>
			<div id="bodycontent">
			<div id="bdy_cont1">
				<div id="topicon1"><img src="images/project_icon.jpg" /></div>
				<div id="topicon2"><span class="top10">Employee Todos</span></div>
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
<td class="tblHtxt"><b>Assign To</b></td>
<td class="tblHtxt"><b>Project</b></td>
<td class="tblHtxt"><b>Heading</b></td>
<td class="tblHtxt"><b>Assign By</b></td>
<td class="tblHtxt"><b>Assign date</b></td>
<td class="tblHtxt"><b>Status</b></td>
<c:if test="${editPermision=='1' || deletePermision=='1'}">
<td class="tblHtxt"><b>Action</b></td>
</c:if>
</tr>
<%boolean color=false; %>
<c:forEach items="${todosList}" var="todos" begin="${startIndex}" end="${endIndex}">
<%if(color==false){ %>
<tr bgcolor="#DAF297">
<td class="tbltxt">${todos.assignto}</td>
<td class="tbltxt"> ${todos.projectid}</td>
<td><a href="todosdetails.html?todosid=${todos.todosid}" class="tbltxt"> ${todos.headline}</a></td>
<td class="tbltxt"> ${todos.assignby}</td>
<td class="tbltxt"> ${todos.assigndate}</td>
<td class="tbltxt">
	<c:choose>
		<c:when test="${todos.status==0}">
			Pending
		</c:when>
		<c:otherwise>
			Complete
		</c:otherwise>
	</c:choose>
</td>
<c:if test="${editPermision=='1' || deletePermision=='1'}">
<td>
<c:if test="${editPermision=='1'}">
<a href="edittodosprofile.html?mode=edit&todosid=${todos.todosid}" class="tbltxt">Edit </a></c:if>&nbsp;&nbsp;
<c:if test="${deletePermision=='1'}">
<a href="#" onClick="deleteTodos('${todos.todosid}','${todos.headline}')" class="tbltxt">Delete </a>
</c:if>
 </td>
 </c:if>
</tr>
<%
color=true;
} else{%>

<tr bgcolor="#E1F5FD">
<td class="tbltxt"> ${todos.assignto}</td>
<td class="tbltxt"> ${todos.projectid}</td>
<td><a href="todosdetails.html?todosid=${todos.todosid}" class="tbltxt"> ${todos.headline}</a></td>
<td class="tbltxt"> ${todos.assignby}</td>
<td class="tbltxt"> ${todos.assigndate}</td>
<td class="tbltxt">
	<c:choose>
		<c:when test="${todos.status==0}">
			Pending
		</c:when>
		<c:otherwise>
			Complete
		</c:otherwise>
	</c:choose>
</td>
<c:if test="${editPermision=='1' || deletePermision=='1'}">
<td>
<c:if test="${editPermision=='1'}">
<a href="edittodosprofile.html?mode=edit&todosid=${todos.todosid}" class="tbltxt">Edit </a></c:if>&nbsp;&nbsp;
<c:if test="${deletePermision=='1'}">
<a href="#" onClick="deleteTodos('${todos.todosid}','${todos.headline}')" class="tbltxt">Delete </a>
</c:if>
 </td>
 </c:if>
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