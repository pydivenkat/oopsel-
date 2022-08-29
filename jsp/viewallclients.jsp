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
function deleteClient(clientid,clientname)
{
var status=confirm("Are you really want to delete \nthe following Client: \n"+clientname);
if(status==true)
{
document.location="deleteclient.html?clientid="+clientid;
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
				<div id="topicon2"><span class="top10">All Clients</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">				  

					  
						 
						 
							<table cellpadding="0" cellspacing="1" width="100%" border="0">	
						
<tr width="100%">
<td colspan="3"></td>
<td colspan="2" align="right" class="labeltext">
<c:if
					test="${isNewestEnabled}">
					<a href="viewallclients.html?pageIndx=1" class="linktext">&lt;&lt;First</a>
				</c:if> <c:if test="${isNewerEnabled}">
					<a href="viewallclients.html?pageIndx=${prvIndx}" class="linktext">&lt;Prev10</a>
				</c:if> <b>${pagingMsg}</b> <c:if test="${isOlderEnabled}">
					<a href="viewallclients.html?pageIndx=${nxtIndx}" class="linktext">Next10&gt;</a>
				</c:if> <c:if test="${isOldestEnabled}">
					<a href="viewallclients.html?pageIndx=${lastIndx}" class="linktext">Last&gt;&gt;</a>
				</c:if>
</td>
</tr>
<tr style="background-color:#63A100" height="30">
<td width="80" class="tblHtxt"><b>Client ID</b></td>
<td width="80" class="tblHtxt"><b>Client name</b></td>
<td width="80" class="tblHtxt"><b>Email</b></td>
<td width="80" class="tblHtxt"><b>Action</b></td>
</tr>
<%boolean color=false; %>
<c:forEach items="${clientList}" var="client" begin="${startIndex}" end="${endIndex}">
<%if(color==false){ %>
<tr bgcolor="#DAF297">
<td class="tbltxt"> ${client.clientid}</td>
<td class="tbltxt"><a href="clientdetails.html?clientid=${client.clientid}" class="linktxt">${client.name}</a></td>
<td class="tbltxt"> ${client.email}</td>
<td>
<a href="editclientprofile.html?clientid=${client.clientid}" class="tbltxt">Edit </a> &nbsp;&nbsp;
<a href="#" onclick="deleteClient('${client.clientid}','${client.name}')" class="tbltxt">Delete </a> 
 </td>
</tr>
<%
color=true;
} else{%>

<tr bgcolor="#E1F5FD">
<td class="tbltxt"> ${client.clientid}</td>
<td class="tbltxt"><a href="clientdetails.html?clientid=${client.clientid}" class="linktxt">${client.name}</a></td>
<td class="tbltxt"> ${client.email}</td>
<td>
<a href="editclientprofile.html?clientid=${client.clientid}" class="tbltxt">Edit </a> &nbsp;&nbsp;
<a href="#" onclick="deleteClient('${client.clientid}','${client.name}')" class="tbltxt">Delete </a> 
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