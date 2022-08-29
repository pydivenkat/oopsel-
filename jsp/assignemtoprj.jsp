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
<link rel="stylesheet" type="text/css" href="css/style.css" />


<script type="text/javascript">
function canceledit()
{
document.location='adminhome.html';
}

function getemployeeList()
{
var employeeid="";
var list = document.getElementById('lstBox2');

for(var i = 0; i < list.options.length; ++i)
employeeid=employeeid+list.options[i].value+" ";
document.getElementById('employeeids').value=employeeid;
}

</script>
<script src="jquery/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script language="javascript">
        $(document).ready(function() {
            $("#btnAdd").click(function() {
                $("#lstBox1 > option:selected").appendTo("#lstBox2");
            });
            $("#btnAddAll").click(function() {
                $("#lstBox1 > option").appendTo("#lstBox2");
            });
            $("#btnRemove").click(function() {
                $("#lstBox2 > option:selected").appendTo("#lstBox1");
            });
            $("#btnRemoveAll").click(function() {
                $("#lstBox2 > option").appendTo("#lstBox1");
            });
        });             
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
				<div id="topicon2"><span class="top10">Assign Project to Employee</span></div>
				<div id="topicon3"><img src="images/hide_icon.png" /></div>
				<div id="topicon4"><img src="images/show_icon.png" /></div>
			</div>
			<div id="bdy_cont2"></div>
			<div id="bdy_cont3"><img src="images/bd_upportion.jpg" /></div>
			<div id="bdy_cont4_2">		

<form:form name="testform">


	<div style="width:700px; height:400px; padding-left: 80px;" align="center">
<div style="width:200px; height:20px;"></div>
<div style="width:500px; height:20px; margin-top:8px;padding-left: 200px;">
<span class="menutext-h1">Project:</span>&nbsp;
<span>
<form:select path="projectid" cssClass="loginsmall" cssStyle="width: 220px;">
				<form:option value="0">Select a project</form:option>
				<form:options items="${projectList}" itemLabel="projectname"
					itemValue="projectid" />
		</form:select>
</span>&nbsp;
<span>
<form:errors path="projectid" cssClass="error"/>	
</span>
</div>
<div style="width:700px; height:300px;  " align="center">

<div style="width:20px; height:250px; margin-top:20px; float:left; "></div>
<div style="width:260px; height:250px; margin-top:20px; float:left; ">


<div style="width:260px; height:20px; " align="center" class="menutext-h1">Available Employee</div>

<div style="width:260px; height:50px; margin-top:20px; ">

<form:select path="lstBox1" multiple="multiple" cssClass="loginsmall" cssStyle="height: 200px;; width: 250px;" >
			<form:options items="${employeeList}" itemLabel="employeename"
					itemValue="employeeid" />
		</form:select>
</div>


</div>
<div style="width:100px; height:250px; margin-top:20px; padding-top:35px; float:left; " align="center">

<span><input id="btnAdd" type="button" value=" &gt; " class="buttontext" /></span><br/><br/>
<span><input id="btnAddAll" type="button" value="&gt;&gt;" class="buttontext" /></span><br/><br/>
<span><input id="btnRemove" type="button" value=" &lt; "  class="buttontext"/></span><br/><br/>
<span><input id="btnRemoveAll"type="button" value="&lt;&lt;" class="buttontext" /></span><br/><br/>
</div>
<div style="width:260px; height:250px; margin-top:20px; float:left; ">

<div style="width:260px; height:20px; "  align="center" class="menutext-h1" >Selected Employee</div>

<div style="width:260px; height:50px; margin-top:20px; ">
<form:select path="lstBox2" multiple="multiple" cssStyle="height: 200px; width: 250px;" cssClass="loginsmall" >
</form:select>
</div>

</div>


<div style="width:650px; height:30px; padding: -20px 120px 0 0;  " align="right">
<form:hidden path="employeeids" />
<input type="submit" value="Submit" onclick="getemployeeList();"/></div>

</div>


</div>


</form:form>

				</div>
			<div id="bdy_cont5"><img src="images/bd_dnportion.jpg" /></div>		
		</div>
	</div>
	<div id="contain_footer"><span class="footercont">Copyright @ 2011 Euphern |  Simple Project Manager V2.1     </span></div>
</div>

</body>
</html>	    
