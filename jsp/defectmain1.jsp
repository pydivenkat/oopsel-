<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Defect</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body leftmargin="0" topmargin="0">
<div id="wrapper">
	<div id="contain_header"><img src="images/header.jpg" alt=""/></div>
	<div id="contain_menu">
		<div class="menudiv"><img src="images/cus_icon.jpg" /></div>
		<div class="menudiv1"><a href="#" class="menutxt">Customers</a></div>
		
		<div class="menudiv"><img src="images/pro_icon.jpg" /></div>
		<div class="menudiv2"><a href="#" class="menutxt">Projects</a></div>
		
		<div class="menudiv"><img src="images/todo_icon.jpg" /></div>
		<div class="menudiv3"><a href="#" class="menutxt">Todos</a></div>
		
		<div class="menudiv"><img src="images/profile_icon.jpg" /></div>
		<div class="menudiv4"><a href="#" class="menutxt">Profile</a></div>
		
		<div class="menudiv"><img src="images/knowledge_icon.jpg" /></div>
		<div class="menudiv5"><a href="#" class="menutxt">Knowledgebase</a></div>
		
		<div class="menudiv"><img src="images/login_icon.jpg" /></div>
		<div class="menudiv4"><a href="#" class="menutxt">Login</a></div>
	</div>
	<div id="contain_body">
	  <div id="bodycontent_defect">
	   
			<div id="bdy_contdefect">
				<!-- Defect body start -->
				
				<table align="center" width="950" height="950"  border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td valign="top" height="75">
					   <table width="950" border="0" cellspacing="0" cellpadding="0">
						 <tr>
						   <td align="center" height="75" width="150"><a href=""></a></td>
						   <td width="660"></td>
						   <td valign="top" width="140">
							 <table width="140" border="0" cellspacing="0" cellpadding="0">
							   <tr>
								 <td colspan="2" height="20"></td>
							   </tr>
							  <tr>
								<td width="50" height="20"><a href="#" class="logout">logout</a></td>
								<td height="20"><img src="images/logout_btn.jpg" alt="" /></td>
							  </tr>
							  <tr>
								<td height="35" colspan="2"></td>
							  </tr>
						</table></td>
					  </tr>
					</table></td>
				  </tr>
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
										<table width="950" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td width="119" height="25"><a href="" class="menu_h2">New ChangeReq</a></td>
											<td valign="bottom" width="18" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
											<td width="265">&nbsp;</td>
											<td width="239">&nbsp;</td>
											<td width="136"><a href="" class="menu_h2">Manage Reports</a></td>
											<td width="109"><a href="" class="menu_h2">Preferences</a></td>
											<td width="42"><a href="" class="menu_h2">Help</a></td>
											<td valign="bottom" width="22" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
										  </tr>
										</table>
				
									
									</td>
								  </tr>
								  <tr>
									<td valign="top" height="669">
										<table width="950" height="669" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td valign="top" height="662" width="5"></td>
											<td valign="top" width="235">
											   <table width="235"  height="5"  cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top"  height="5"></td>
												  </tr>
											  </table>
												<table width="235"  height="70" border="1" bordercolor="#ABCC6A" cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top"  height="70">
														<table width="230" height="70" border="0" cellspacing="0" cellpadding="0">
														  <tr>
															<td valign="top" rowspan="3" width="5"></td>
															<td valign="top" colspan="2" height="8"></td>
														  </tr>
														  <tr>
															<td valign="top" height="26" width="150"><input name="Input" type="text" /></td>
															<td valign="top"><img src="images/go_btn1.jpg" alt="" /></td>
														  </tr>
														  <tr>
															<td valign="top"> 
																<table width="150" border="0" cellspacing="0" cellpadding="0">
																  <tr>
																	<td width="25"><input name="" type="radio" value="" /></td>
																	<td width="63"><span class="redio_text">Full Text</span></td>
																	<td width="24"><input name="" type="radio" value="" /></td>
																	<td width="38"><span class="redio_text">By ID</span></td>
																  </tr>
															  </table>											</td>
															<td valign="top"></td>
														  </tr>
														</table>
				
													</td>
												  </tr>
												</table>
												<table width="235"  height="6"  cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top"  height="6"></td>
												  </tr>
												</table>
												<table width="235"  height="213"  border="1" bordercolor="#ABCC6A"  cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top" height="213" background="images/leftmenu_bg.jpg" style="background-repeat:no-repeat;">
														<table width="230" border="0" cellspacing="0" cellpadding="0">
														  <tr>
															<td width="210" height="10"><a href="" class="menu_h1"> Clear Quest  Navogator</a></td>
															<td valign="bottom" width="20" height="10" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
														  </tr>
														</table>
													</td>
													
												  </tr>
												</table>
												<table width="235"  height="6"  cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top"  height="6"></td>
												  </tr>
												</table>
												<table width="235"  height="26" border="1" bordercolor="#ABCC6A"  cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top"  height="26" background="images/leftmenu_bg.jpg">
														<table width="230" border="0" cellspacing="0" cellpadding="0">
														  <tr>
															<td width="210" height="10"><a href="" class="menu_h1"> Clear Quest  Favorites</a></td>
															<td valign="bottom" width="20" height="10" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
														  </tr>
														</table>
													</td>
												  </tr>
												</table>
												<table width="235"  height="6"  cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top"  height="6"></td>
												  </tr>
												</table>
												<table width="235"  height="322" border="1" bordercolor="#ABCC6A"  cellspacing="0" cellpadding="0">
												  <tr>
													<td valign="top"  height="322" background="images/leftmenu_bg.jpg" style="background-repeat:no-repeat;">
														<table width="230" border="0" cellspacing="0" cellpadding="0">
														  <tr>
															<td width="210" height="10"><a href="" class="menu_h1"> Clear Quest  Properties</a></td>
															<td valign="bottom" width="20" height="10" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
														  </tr>
														</table>
													</td>
												  </tr>
												</table>
												</td>
											<td height="662" width="5"></td>
											<td valign="top" width="700">
											  <table width="700"  height="5"  cellspacing="0" cellpadding="0">
												<tr>
												 <td valign="top"  height="5"></td>
											   </tr>
											  </table>
											   <table width="700"   height="31"  cellspacing="0" cellpadding="0">
												<tr>
												 <td valign="top"  height="31">
													<table  width="700"  height="31" border="0" cellspacing="0" cellpadding="0">
													  <tr>
														<td width="114" background="images/gray_btn1.jpg" >
														<a href="" onmouseover="document.but01.src='images/gray_hvbtn1.jpg'" onmouseout="document.but01.src='images/gray_btn1.jpg'" > 
													 <img src="images/gray_btn1.jpg" name="but01" border="0" alt=""/></a></td>
													 
														<td width="3"></td>
														
														<td width="222" background="images/gray_btn2.jpg">
														<a href="" onmouseover="document.but02.src='images/gray_hvbtn2.jpg'" onmouseout="document.but02.src='images/gray_btn2.jpg'" > 
													 <img src="images/gray_btn2.jpg" name="but02" border="0" alt=""/></a></td>
														
														<td width="3"></td>
														
														<td width="161" background="images/gray_btn3.jpg" style="background-repeat:no-repeat;">
														<a href="" onmouseover="document.but03.src='images/gray_hvbtn3.jpg'" onmouseout="document.but03.src='images/gray_btn3.jpg'" > 
													 <img src="images/gray_btn3.jpg" name="but03" border="0" alt=""/></a></td>
														
														<td width="197"></td>
													  </tr>
													</table>
				
												 </td>
											   </tr>
											   </table>
											   <table width="700"  height="2"  cellspacing="0" cellpadding="0">
												<tr>
												 <td valign="top"  height="2"></td>
											   </tr>
											   </table>
											   <table width="700"   height="58"  cellspacing="0" cellpadding="0">
												<tr>
												<td valign="top" width="700"  height="58" background="images/bodymenu_bg.jpg">
												<table width="700" border="0" cellspacing="0"cellpadding="0">
												   <tr>
													 <td valign="top" colspan="10" height="29" width="580">
														<table width="580" border="0" cellspacing="0" cellpadding="0">
														  <tr>
															<td height="25" width="15"></td>
															<td width="190"><span class="no_text">ChangeReq:PROD00023169</span></td>
															<td width="15" valign="bottom"><img src="images/downarrow_btn.gif" alt="" /></td>
															<td width="200"  valign="middle">&nbsp;</td>
															<td width="25"><img src="images/arrow.gif" alt="" /></td>
															<td width="25"><img src="images/print.gif" alt="" /></td>
															<td width="25"><img src="images/star.gif" alt="" /></td>
															<td width="15" valign="bottom"><img src="images/downarrow_btn.gif" alt="" /></td>
															<td width="25" valign="middle"><img src="images/clender.gif" alt="" /></td>
															<td width="15" valign="bottom"><img src="images/downarrow_btn.gif" alt="" /></td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
														  </tr>
														</table>
				
													 </td>
													 <td valign="middle"  height="29" width="120">
													 <span class="no_text">Modify | Change</span>
													 
													 </td>
												   </tr>
												   <tr>
													 <td width="14"></td>
													 
													 <td width="110" height="29">
													 <a href="" onmouseover="document.but1.src='images/main_hvbtn.jpg'" onmouseout="document.but1.src='images/main_btn.jpg'" > 
													 <img src="images/main_btn.jpg" name="but1" border="0" alt=""/></a></td>
													 
													 <td width="4"></td>
													 
													 <td width="110" height="29">
													 <a href="" onmouseover="document.but2.src='images/build_hvbtn.jpg'" onmouseout="document.but2.src='images/build_btn.jpg'" > 
													 <img src="images/build_btn.jpg" name="but2" border="0" alt=""/></a></td>
													 <td width="4"></td>
													 
													 <td width="110" height="29">
													 <a href="" onmouseover="document.but3.src='images/notes_hvbtn.jpg'" onmouseout="document.but3.src='images/notes_btn.jpg'" > 
													 <img src="images/notes_btn.jpg" name="but3" border="0" alt=""/></a></td>
													 
													 <td width="4"></td>
													 
													 <td width="110" height="29">
													 <a href="" onmouseover="document.but4.src='images/resolution_hvbtn.jpg'"onmouseout="document.but4.src='images/resolution_btn.jpg'">                                     <img src="images/resolution_btn.jpg" name="but4" border="0" alt=""/></a></td>
													 
													 <td width="4"></td>
													 
													 <td width="110" height="29">
													 <a href="" onmouseover="document.but5.src='images/attach_hvbtn.jpg'"onmouseout="document.but5.src='images/attach_btn.jpg'"> 
													 <img src="images/attach_btn.jpg" name="but5" border="0" alt=""/></a></td>
													 
													 <td width="120"></td>
													 
												   </tr>
												 </table></td>
											   </tr>
											   </table>
											   <table width="700"  height="5"  cellspacing="0" cellpadding="0">
												<tr>
												 <td valign="top"  height="5"></td>
											   </tr>
											   </table>
											   <table width="700"  height="562"  border="1" bordercolor="#ABCC6A"  cellspacing="0" cellpadding="0">
												<tr>
												 <td valign="top"  height="562">
												 
												 <!-- Start Main Body -->
												 
												 
										<form:form>
										<table border="0" align="center">
										<tr height="10">
										<td colspan="4"></td>
										</tr>
								<tr>
									<td class="label_text">Id:</td>
									<td><form:input path="defectid" id="defectid" disabled='true' /></td>									
									<td class="label_text">Severity:</td>
									<td><form:select path="severity" disabled='true' cssClass="combo_style">
									<form:option value="Sev1">Sev1</form:option>	
									<form:option value="Sev2">Sev2</form:option>	
									<form:option value="Sev3">Sev3</form:option>	
									<form:option value="Sev4">Sev4</form:option>
									</form:select></td>
									</tr><tr>
									<td class="label_text">Owner:</td>
									<td><form:input path="ownerid" id="ownerid" disabled='true' /></td>
									<td class="label_text">Full Name:</td>
									<td>
									<input id="usreName" disabled='true' /></td>
								</tr>
								
								
								<tr>
									<td class="label_text">Headline:</td>
									<td colspan="3">
									<form:textarea path="headline" cols="56" rows="3"
										id="headline" disabled='true'></form:textarea></td>
								</tr>
								
								<tr>
									<td class="label_text">Project:</td>
									<td colspan="3">
									<form:select path="projectid" id="projectid" cssStyle="width:468px;" disabled='true'>
									<form:options items="${projectList}" itemLabel="projectname"
										itemValue="projectid"></form:options>
								</form:select>
								</td>
									
								</tr>
								
								<tr>
									<td class="label_text">State:</td>
									<td>
									<form:select path="state" disabled='true' cssClass="combo_style">
										<form:option value="Integration Failed">Integration Failed</form:option>
									<form:option value="Integration Tested">Integration Tested</form:option>
									<form:option value="Unit Tested">Unit Tested</form:option>
									<form:option value="Close">Close</form:option>
									<form:option value="Fixed">Fixed</form:option>
									<form:option value="Opened">Opened</form:option>
									<form:option value="Assigned">Assigned</form:option>
									<form:option value="Submitted">Submitted</form:option>
									</form:select></td>
									
									<td class="label_text">Priority:</td>
									<td>
									<form:select path="priority" cssClass="combo_style" disabled='true'>
									<form:option value="P1">P1</form:option>	
									<form:option value="P2">P2</form:option>	
									<form:option value="P3">P3</form:option>
									<form:option value="P4">P4</form:option>
									</form:select></td>
									
									
									</tr>
										
							
								<tr>
									<td class="label_text">
									Description:</td>
									<td colspan="4"><form:textarea path="description"
										id="description" cols="56" rows="3" disabled='true'></form:textarea>
									</td>
								</tr>
								<tr>
									<td colspan="4" align="center">
									<input type="button" value="Edit" onClick="activeField()" class="button_text">
									<input type="submit" value="Update" id="btnUpdate"
										disabled="disabled" class="button_text"></td>
								</tr>
							</table>
								</form:form>
												 
												 <!-- End Main Body -->
												 </td>
											   </tr>
											   </table>
											</td>
											<td valign="top" height="662" width="5"></td>
										  </tr>
										  <tr>
											<td colspan="5" height="7"></td>
										  </tr>
										</table>
				
									</td>
								  </tr>
								  <tr>
									<td valign="top"  height="54" background="images/footer_bg.jpg" style="background-repeat:no-repeat;">
									<span class="footer_text">Copy Rights(c) 2009-2010 euphern. All Right Reserved.</span></td>
									
								  </tr>
								</table>			</td>
						  </tr>
						</table>	</td>
				  </tr>
				  <tr>
					<td valign="top" height="62"></td>
				  </tr>
				</table>
				
				<!-- Defect body close -->
			</div>
	  </div>
	</div>
	<div id="contain_footer"><span class="footercont">Copyright @ 2011 Euphern |  Simple Project Manager V2.1     </span></div>
</div>

</body>
</html>
