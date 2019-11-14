<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${good }"></c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品添加</title>
<script type="text/javascript" src="libs/jquery-3.4.1.js" ></script>
<script>
	$(function(){
		$("#form2").hide();
		$("#buy").click(function(){
			$("#form2").show();
			$("#buy").mouseout(function(){
				$("#form2").show();
			})
		})
		$("#kan").onclick(function(){
			
			alert(1111111111)
		})
	})
</script>
</head>
<body>
<div id="dname">
	<h5>欢迎您【<span>${uname}</span>】</h5>	
</div>
<form action="" method="post" name="form1" id="form1">
<table align="center" width="500px" height="400px" border="1px" bgcolor="lightskyblue">
<tr bgcolor="white" align="center">
<td colspan="7">
商品查看
</td>
</tr>
<tr align="center">
<td>物品名称</td>
<td>物品价格</td>
<td>物品购买时间</td>
<td>物品类别</td>
<td>图片预览</td>
<td>操作</td>
</tr>
<c:forEach items="${goodlist }" var="ml">
<tr>
<td align="center">${ml.getGname() }</td>
<td align="center">${ml.getGprice() }</td>
<td align="center">${ml.getGbuy_time() }</td>
<td align="center">${ml.getGspecie_name() }</td>
<td>
<a href="uppic/${ml.getPicname() }">
	<img alt="" height="100px" width="100px" src="uppic/${ml.getPicname() }">
</a>
</td>
<td>
<a id="buy" name="buy" href="guodu.do?gid=${ml.getGid()} ">购买</a>
</td>
</tr> 
</c:forEach>
<tr align="center">
<td colspan="7">
<a href="shows.jsp">返回购物页面</a>
</td>
</tr>
</table>
</form>
</body>
</html>