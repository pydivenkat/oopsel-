<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<%@page import="com.projectmgmt.common.DateTimeHelper" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Administrator</title>
<link rel="stylesheet" href="css/style.css" type="text/css"  />
<!-- You have to include these two JavaScript files from DWR -->
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<!-- This JavaScript file is generated specifically for your application -->
<script type='text/javascript' src='dwr/interface/UserCurrentAttendanceController.js'></script>
<script type="text/javascript">
function getStatus(userid,value)
{
UserCurrentAttendanceController.setAttendanceById(42,userid,value);
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
				<div id="topicon2"><span class="top10">Todays Attendance</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">					  

					  
				<form:form name="testform"></form:form>		  
						 
							<table cellpadding="0" cellspacing="3" width="820" border="0">
<tr>
<td></td>
<td colspan="8" align="right" class="labeltext">
<c:if
					test="${isNewestEnabled}">
					<a href="currentattendance.html?pageIndx=1" class="linktext">&lt;&lt;First</a>
				</c:if> <c:if test="${isNewerEnabled}">
					<a href="currentattendance.html?pageIndx=${prvIndx}" class="linktext">&lt;Prev10</a>
				</c:if> <b>${pagingMsg}</b> <c:if test="${isOlderEnabled}">
					<a href="currentattendance.html?pageIndx=${nxtIndx}" class="linktext">Next10&gt;</a>
				</c:if> <c:if test="${isOldestEnabled}">
					<a href="currentattendance.html?pageIndx=${lastIndx}" class="linktext">Last&gt;&gt;</a>
				</c:if>
</td>
</tr>
<tr style="background-color:#63A100" height="30">
<td colspan="3" class="tblHtxt1">Todays Date:
	<%=DateTimeHelper.getCurrentDateinString() %>
</td>
</tr>
<tr style="background-color:#63A100" height="30">
<td width="60" class="tblHtxt">Emp Code</td>
<td width="80" class="tblHtxt">Emp name</td>
<td width="80" class="tblHtxt">Todays Attendance Status</td>
</tr>
<%boolean color=false; %>
<c:forEach items="${currentAttendanceList}" var="currentAttendance" begin="${startIndex}" end="${endIndex}">
<%if(color==false){ %>
<tr bgcolor="#DAF297">
<td class="tbltxt"> ${currentAttendance.userid}</td>
<td class="tbltxt"> ${currentAttendance.username}</td>
<c:choose>
	<c:when test="${currentAttendance.status==true}">
		<td class="tbltxt"> 
			<input type="radio" name="${currentAttendance.userid}" value="true" checked="checked" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Present
			<input type="radio" name="${currentAttendance.userid}" value="false" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Absent
		</td>
	</c:when>
	<c:otherwise>
		<td class="tbltxt"> 
			<input type="radio" name="${currentAttendance.userid}" value="true" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Present
			<input type="radio" name="${currentAttendance.userid}" value="false" checked="checked" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Absent
		</td>
	</c:otherwise>
</c:choose>
</tr>
<%
color=true;
} else{%>

<tr bgcolor="#E1F5FD">
<td class="tbltxt"> ${currentAttendance.userid}</td>
<td class="tbltxt"> ${currentAttendance.username}</td>
<c:choose>
	<c:when test="${currentAttendance.status==true}">
		<td class="tbltxt"> 
			<input type="radio" name="${currentAttendance.userid}" value="true" checked="checked" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Present
			<input type="radio" name="${currentAttendance.userid}" value="false" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Absent
		</td>
	</c:when>
	<c:otherwise>
		<td class="tbltxt"> 
			<input type="radio" name="${currentAttendance.userid}" value="true" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Present
			<input type="radio" name="${currentAttendance.userid}" value="false" checked="checked" onclick="getStatus('${currentAttendance.userid}',this.value)"/>Absent
		</td>
	</c:otherwise>
</c:choose>
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