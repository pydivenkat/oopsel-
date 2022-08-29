<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.util.Iterator,java.util.List,java.util.Date" %>
<%@page import="com.projectmgmt.user.bean.UserAttendance" %>
<%@page import="com.projectmgmt.common.DateTimeHelper" %>
<%@ page isELIgnored="false"%>

<%@page import="com.projectmgmt.admin.bean.AssignHoliday"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/calendar.css">
<script type="text/javascript" src="js/customer.js"></script>
<script language="JavaScript" src="js/calendar_us.js"></script>
<!-- You have to include these two JavaScript files from DWR -->
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<!-- This JavaScript file is generated specifically for your application -->
<script type='text/javascript' src='dwr/interface/UserAttendanceController.js'></script>
<script type='text/javascript' src='js/moveelement.js'></script>
<script type="text/javascript" src="tiny_mce/tiny_mce.js"></script>
<script type="text/javascript" src="js/csspopup.js"></script>
<script type="text/javascript">
function cancel()
{
document.location='adminhome.html';
}
function getAttendanceList(userid,fromDate,toDate)
{


UserAttendanceController.getAttendanceListById(42,userid,fromDate,toDate,handlegetAttendanceListById);
popup('popUpDiv');
}

function handlegetAttendanceListById(str)
{
//alert("ALT "+str);
 document.getElementById('popUpDiv').innerHTML=str;
}

function closeDiv()
{
popup('popUpDiv');
}
</script>
<style type="text/css">
<!--
#blanket {
   background-color:#666666;
   opacity: 0.5;   
   position:absolute;
   z-index: 9001; 
   top:0px;
   left:0px;
   width:0%;
}
#popUpDiv {
	position:absolute;
	background-color:#eeeeee;
	width:280px;
	height:270px;
	z-index:0; 
	margin-top: 150px;
	border-style: outset;
	border-width: thin;
	border-color: #0000ff;
}
-->
</style>
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
				<div id="topicon2"><span class="top10">Employee Attendance</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">


			<form:form name="myform">
			
				
				<table border="0" align="center">
					<tr>
						<td class="menutext-h1" align="right">Employee Name:</td>
						<td><form:select path="employeeid" cssClass="loginsmall" cssStyle="width: 138px;">							
							<form:option value="0" cssClass="">----Select----</form:option>
							<form:option value="all">All employee</form:option>					
								<form:options items="${employeeNameList}" itemLabel="employeename"
									itemValue="employeeid" />
							</form:select><label class="error">*</label>
						</td>
						<td   align="right"><span class="menutext-h1">From:</span></td>
						<td><form:input path="fromDate"
								cssClass="loginsmall"  /> <script language="JavaScript">
								new tcal ({
								// form name
								'formname': 'myform',
								// input name
								'controlname': 'fromDate'
								});

								</script><label class="error">*</label>
						</td>
						<td   align="right"><span class="menutext-h1">To:</span></td>
						<td><form:input path="toDate"
								cssClass="loginsmall"  /> <script language="JavaScript">
								new tcal ({
								// form name
								'formname': 'myform',
								// input name
								'controlname': 'toDate'
								});

								</script><label class="error">*</label></td>
					</tr>
					
					<tr>
						<td></td>
						<td><form:errors path="employeeid" cssClass="error" /></td>
						<td></td>
						<td><form:errors path="fromDate" cssClass="error" /></td>
						<td></td>
						<td><form:errors path="toDate" cssClass="error" /></td>
					</tr>
					
					<tr>
						<td colspan="2" height="20"></td>
					</tr>
					
					<tr>
						<td align="center" colspan="6"><input type="submit"
							value="Get Attendance" class="button_text" />&nbsp;&nbsp; <input
							type="button" value="Cancel" class="button_text"
							onclick="cancel()" />
						</td>
					</tr>
					<tr>
						<td align="right" colspan="6">
							
						</td>
					</tr>
				</table>
				
			</form:form>
			<div align="right"><img src="images/greenbg-1.jpg"/><b>=Present</b>
							<img src="images/Y_bg.jpg"/><b>=Absent</b>
							<img src="images/redbg-1.jpg"/><b>=Holiday</b></div>
			<div style="height: 300px; width: 820px; border: 1px solid #ccc; overflow: auto;">
			
			<%
				String fromDate=request.getParameter("from");
				String toDate=request.getParameter("to");
			%>
			
			
			<% if(request.getAttribute("attendanceList")!=null)
			{
			List attendanceList=(List)request.getAttribute("attendanceList");
			List holidayList=(List)request.getAttribute("holidayList");
//			  System.out.println(holidayList.size());
			  String month=null;
			  String empname=null;
			  for(int i=0;i<attendanceList.size();i++){
				  
				  
				  int status=0;
				  
				  UserAttendance userAttendance=(UserAttendance)attendanceList.get(i);
				  String empid=userAttendance.getUserid();
				  
				  if(empname==null)
				  {
					  empname=userAttendance.getUserid();
					  %>					  
					  <div style="width: 80px; float: left;">
					<b><a href="#" onclick="getAttendanceList('<%=empname %>','<%=fromDate%>','<%=toDate%>')"><%=empname %></a></b>
					  </div>
					  <%
				  }
				  else if(!empname.equals(userAttendance.getUserid()))
				  {
					  status=1;
					  empname=userAttendance.getUserid();
					  %>
					  <br>
					  <div style="width: 80px; float: left;">
					  <b><a href="#" onclick="getAttendanceList('<%=empname %>','<%=fromDate%>','<%=toDate%>')"><%=empname %></a></b>
					  </div>
					  <%
					  
				  }
				  if(month==null)
				  {
					  month=userAttendance.getMonthName();
					  %>					  
					  <div style="width: 90px; float: left;">
					  <b><%=month %></b>
					  </div>
					  <%
				  }
				  
				  else if(!month.equals(userAttendance.getMonthName()) || status==1)
				  	{
					  	month=userAttendance.getMonthName();
					  	if(status!=1) {
					  	%>
						  <br>
						<%  
					 	 }
					  	if(status!=1) {
					  	%>
					  
					  	<div style="width: 80px; float: left;">&nbsp;</div><%  
					  	}
					  	%>
					  	<div style="width: 90px; float: left;">
					  	<b><%=month %></b>
					  	</div>
					  	<%
					  
				  	}

				  if(userAttendance.getStatus()==1)
				  {
						  %>
						  
						  	<div style="background:url(images/greenbg-1.jpg) no-repeat; width: 20px; float: left; font-family:arial; font-size:12px; font-weight:bold;text-align: center;"><%=userAttendance.getLogindate().substring(userAttendance.getLogindate().length()-2,userAttendance.getLogindate().length()) %></div>
						  <%
						  
				  }
				  else
				  {
					  	if(holidayList.contains(userAttendance.getLogindate()))
					  	{
					  		%>
							  <div style="background:url(images/redbg-1.jpg) no-repeat; width: 20px; float: left; font-family:arial; color:#ffffff; font-size:12px;text-align: center;"> <%=userAttendance.getLogindate().substring(userAttendance.getLogindate().length()-2,userAttendance.getLogindate().length()) %> </div>
							  <%
					  	}
					  	else
					  	{
					  		%>
							  <div style="background:url(images/Y_bg.jpg) no-repeat; width: 20px; float: left; font-family:arial; color:#000000; font-size:12px;text-align: center;"> <%=userAttendance.getLogindate().substring(userAttendance.getLogindate().length()-2,userAttendance.getLogindate().length()) %> </div>
							  <%
					  	}
					  
				  	}
			  	}
			}
			%>
			
			</div>

			</div>
			<div id="bdy_cont5"><img src="images/bd_dnportion.jpg" /></div>		
		</div>
	</div>
	<div id="contain_footer"><span class="footercont">Copyright @ 2011 Euphern |  Simple Project Manager V2.1     </span></div>
</div>

<div id="blanket" style="display:none;"></div>
<div id="popUpDiv" style="display:none;">
</div>

</body>
</html>