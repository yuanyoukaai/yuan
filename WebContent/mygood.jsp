<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品添加</title>
<script>
function docbangeRows(){
	var rows=document.form1.rows.value;
	if(isNaN(rows)){
	alter('输入正确数字！');
	document.form1.rows.value=${pb.rows};
	return;
	}
	window.location="findMyGoods.do?rows="+rows;
}
//跳转页数的函数
function docbangePage(){
	var page=document.form1.page.value;
	if(isNaN(page)){
	alter('输入正确数字！');
	document.form1.page.value=${pb.page};
	return;
	}
	window.location="findMyGoods.do?page="+page;
}
</script>
</head>
<body>
<div id="dname">
	<h5>欢迎您【<span>${uname}</span>】</h5>
</div>
<form action="GoServlet" method="post" name="form">
<table align="center" width="720px" height="400px" border="1px" bgcolor="lightskyblue">
<tr bgcolor="white" align="center">
<td colspan="7">
商品查看
</td>
</tr>
<tr>
<td>物品名称</td>
<td>物品价格</td>
<td>物品浮动价格</td>
<td>物品购买时间</td>
<td>物品类别</td>
<td>图片</td>
<td>操作</td>
</tr>
<c:forEach items="${pb.goodslis }" var="pb">
<tr>
<td align="center">${pb.getGname() }</td>
<td align="center">${pb.getGprice() }</td>
<td align="center">${pb.getGprice_float() }</td>
<td align="center">${pb.getGbuy_time() }</td>
<td align="center">${pb.getGspecie_name() }</td>
<td>
<a href="uppic/${pb.picname }">
	<img alt="" height="100px" width="100px" src="uppic/${pb.picname }">
</a>
</td>
<td>
<a href="deleteGood.do?gid=${pb.getGid() }">下架</a>
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
<form action="" id="form1" name="form1" method="post">
<table width="720" border="1" align="center" cellpadding="1" cellspacing="0">
<tr align="center" bgcolor="#FFFF99">
    <td>
    <c:if test="${pb.page>1}">
    <a href="findMyGoods.do?page=1">
    </c:if>
    首页</a>
    </td>
    <td>
     <c:if test="${pb.page>1}">
    <a href="findMyGoods.do?page=${pb.page-1}">
    </c:if>
    上一页</a>
    </td>
    <td>
     <c:if test="${pb.page<pb.allpage}">
    <a href="findMyGoods.do?page=${pb.page+1}">
    </c:if>
     下一页</a>
    </td>
    <td>
     <c:if test="${pb.page<pb.allpage}">
    <a href="findMyGoods.do?page=${pb.allpage}">
    </c:if>
     末页</a>
    </td>
    <td>
    
    跳转到
    <input type="text" id="page" name="page" size="2" value="${pb.page}" />
    页
    <input type="button" name="button" id="button" value="确定" onclick="docbangePage()" />
    </td>
    <td>
     每页
    <input type="text" id="rows" name="rows" size="2" value="${pb.rows}" />
    记录
     <input type="button" name="button2" id="button2" value="确定" onclick="docbangeRows()" />
    </td>
    
    <td>${pb.page}/${pb.allpage}</td>
  </tr>
</table>
</form>
</body>
</html>