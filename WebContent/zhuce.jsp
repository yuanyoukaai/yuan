<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户注册</title>
<script type="text/javascript" src="libs/jquery-3.4.1.js" ></script>
<script>
	function do1(){
		if($(".i2").val()==null){
			alter("数据不能为空");
			return;
		}
	}
</script>
</head>
<body>
<form action="save_Student.do" method="post" name="form1">
<table align="center" width="400px" height="400px" border="1px" bgcolor="lightskyblue">
<tr bgcolor="white" align="center">
<td colspan="2">
用户注册
</td>
</tr>
<tr>
<td>姓名</td>
<td>
 <input class="i2" type="text" name="uname"><div id="d1"></div>
</td>
</tr>
<tr>
<td>账号</td>
<td>
 <input class="i2" type="text" name="accunt">
</td>
</tr>
<tr>
<td>密码</td>
<td>
<input class="i2" type="password" name="passwd">
</td>
</tr>
<tr align="center">
<td colspan="2">
<input id="i1" type="submit" value="注册" onclick="do1()">
</td>
</tr>
</table>
</form>
</body>
</html>