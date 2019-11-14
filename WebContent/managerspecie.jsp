<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>类别管理</title>
<script type="text/javascript" src="libs/jquery-3.4.1.js" ></script>
<style type="text/css">
	
</style>
</head>
<body>
<form action="saveSp.do" method="post" name="form1" >
<table align="center" border="1">
<tr>
	<td>总类</td>
	<td>新类</td>
	<td>操作</td>
</tr>
<tr>
	<td>
		<select name="asid">
			<option value="1">数码设备</option>
			<option value="2">运动器械</option>
			<option value="3">生活用品</option>
			<option value="4">书籍</option>
		</select>
	</td>
	<td>
		<input type="text" name="gspecie_name">
	</td>
	<td>
		<input type="submit" value="提交">
	</td>
</tr>
</table>
</form>
</body>
</html>