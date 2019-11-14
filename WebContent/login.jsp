<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户登录</title>
<script type="text/javascript" src="libs/jquery-3.4.1.js" ></script>
<script>
	
</script>
</head>
<body>
<form action="findUsers.do" method="post" name="form1">
<table align="center" width="400px" height="400px" border="1px" bgcolor="lightskyblue">
<tr bgcolor="white" align="center">
<td colspan="2">
用户登录
</td>
</tr>
<tr>
<td>账号</td>
<td>
<input class="text1" type="text" name="accunt">
</td>
</tr>
<tr>
<td>密码</td>
<td>
<input class="text1" type="password" name="passwd">
</td>
</tr>
<div id="d1" style="width: 200px; height: 25px; position: absolute; left: 45%;top:250px;">
	<span></span>
</div>
<tr align="center">
<td colspan="2">
<input type="submit" id="log" value="登录">
</td>
</tr>
<tr align="center">
<td colspan="2">
<a href="">忘记密码</a>&nbsp&nbsp&nbsp&nbsp
<a href="zhuce.jsp">注册</a>
</td>
</tr>
</table>
</form>
</body>
</html>