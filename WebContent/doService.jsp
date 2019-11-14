<%@page import="com.biz.UsedBiz"%>
<%@page import="com.biz.IUsedBiz"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<jsp:useBean id="users" class="com.bean.users" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="users"/>
<jsp:useBean id="gs" class="com.bean.goods" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="gs"/>
<jsp:useBean id="sp" class="com.bean.specie" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="sp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加页面</title>
<%
	int op=Integer.parseInt(request.getParameter("op")); 
%>
<jsp:forward page="GoServlet">
	<jsp:param value="<%=op %>" name="op"/>
</jsp:forward>
</head>
<body>
</body>
</html>