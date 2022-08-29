<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<html>
<head></head>
<body>
<table width="950" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td width="119" height="25">
											<c:if test="${addPermision=='1'}">
											<a href="adddefect.html?mode=new" class="menu_h2">New ChangeReq</a></c:if></td>
											<td valign="bottom" width="18" align="center"><c:if test="${addPermision=='1'}"><img src="images/downarrow_btn.gif" alt="" /></c:if></td>
											<td width="265">&nbsp;</td>
											<td width="239">&nbsp;</td>
											<td width="136"><a href="" class="menu_h2">Manage Reports</a></td>
											<td width="109"><a href="" class="menu_h2">Preferences</a></td>
											<td width="42"><a href="" class="menu_h2">Help</a></td>
											<td valign="bottom" width="22" align="center"><img src="images/downarrow_btn.gif" alt="" /></td>
										  </tr>
										</table>
										</body>
</html>