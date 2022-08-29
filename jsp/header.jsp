<div id="contain_header"><img src="images/header.jpg" alt=""/></div>
	<div id="contain_menu">
		<div class="menudiv"><img src="images/cus_icon.jpg" /></div>
		<div class="menudiv1"><a href="#" class="menutxt">Customers</a></div>
		
		<div class="menudiv"><img src="images/pro_icon.jpg" /></div>
		<div class="menudiv2"><a href="empallprojects.html" class="menutxt">Projects</a></div>
		
		<div class="menudiv"><img src="images/todo_icon.jpg" /></div>
		<div class="menudiv3"><a href="viewemptodos.html" class="menutxt">Todos</a></div>
		
		<%if(session.getAttribute("adminUsername")!=null){ %>
		<div class="menudiv"><img src="images/profile_icon.jpg" /></div>
		<div class="menudiv4"><a href="adminhome.html" class="menutxt">Profile</a></div>
		<%} else if(session.getAttribute("employeeid")!=null){%>
		<div class="menudiv"><img src="images/profile_icon.jpg" /></div>
		<div class="menudiv4"><a href="employeedetails.html" class="menutxt">Profile</a></div>
		<%} else if(session.getAttribute("clientid")!=null){%>		
		<div class="menudiv"><img src="images/profile_icon.jpg" /></div>
		<div class="menudiv4"><a href="clienthome.html" class="menutxt">Profile</a></div>
		<%} else{%>
		<div class="menudiv"><img src="images/profile_icon.jpg" /></div>
		<div class="menudiv4"><a href="login.html" class="menutxt">Profile</a></div>
		<%} %>
		
		<div class="menudiv"><img src="images/defect.jpg" /></div>
		<div class="menudiv3"><a href="viewalldefect.html" class="menutxt">Defect</a></div>
		
		<div class="menudiv"><img src="images/knowledge_icon.jpg" /></div>
		<div class="menudiv5"><a href="#" class="menutxt">Knowledgebase</a></div>
		<%if(session.getAttribute("adminUsername")!=null || session.getAttribute("employeeid")!=null || session.getAttribute("clientid")!=null ){ %>
		<div class="menudiv" ><img src="images/logout_icon.jpg" /></div>
		<div class="menudiv6"><a href="logout.html" class="menutxt">Logout</a></div>
		<%} else{%>
		<div class="menudiv" ><img src="images/login_icon.jpg" /></div>
		<div class="menudiv6"><a href="login.html" class="menutxt">Login</a></div>
		<%} %>
		
	</div>