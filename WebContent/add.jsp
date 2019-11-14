<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品添加</title>
<script type="text/javascript" src="libs/jquery-3.4.1.js" ></script>
<script>
	
</script>
</head>
<body>
	<h5>欢迎您【<span>${uname}</span>】</h5>	
</div>
<form action="saveGoods.do" enctype="multipart/form-data" method="post" name="form1">
<table align="center" width="350px" height="300px" border="1px" bgcolor="lightskyblue">
<tr bgcolor="white" align="center">
<td colspan="7">
商品添加
</td>
</tr>
<tr>
<td align="center">物品名称</td>
<td align="center">物品价格</td>
<td align="center">物品浮动价格</td>
<td align="center">物品购买时间</td>
<td align="center">物品类别</td>
<td align="center">图片</td>
</tr>
<tr>
<td><input type="text" name="gname"> </td>
<td><input type="text" name="gprice"></td>
<td><input type="text" name="gprice_float"></td>
<td><input type="date" name="buyTime">
<input type="hidden" name="goodsid" value=${uid }>
</td>
<td>
<select name="gspecies_id">
	<c:forEach items="${slist }" var="sl">
		<option value="${sl.getSid() }">${sl.getGspecie_name() }</option>
	</c:forEach>
</select>
</td>
<td>
<input type="file" name="pic" id="pic">
</td>
</tr>
<tr align="center">
<td colspan="7">
<input id="i1" type="submit" value="提交">
</td>
</tr>
</table>
</form>
</body>
</html>