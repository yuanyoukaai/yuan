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
	#d1 {
		width:200px;
		height:50px;
		background-color:red;
		position: absolute;
		top: 200px;
		left: 40%;	
	}
	#d2{
		width:200px;
		height:50px;
		background-color:red;
		position: absolute;
		top: 350px;
		left: 40%;	
	}
</style>
</head>
<body>
	<a href="managerspecie.jsp">
	<div id="d1" >
		<span style="font-size: 40px">类别管理</span>
	</div>
	</a>
	<a href="GoServlet?op=9"	>
	<div id="d2">
		<span style="font-size: 40px">商品管理</span>
	</div>
	</a>
</body>
</html>