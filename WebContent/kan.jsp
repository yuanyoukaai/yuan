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
	$(function(){
	
		$("#kan").click(function(){
			var p=document.form2.pri.value;
			var fP=document.form2.fl.value;
			var pp=document.form2.gp.value;
			
			var data={'p':p,'fP':fP,'pp':pp}
			$.getJSON("changeSpe.do?p="+p+"&fP="+fP+"&pp="+pp, function(jstr){
					
					document.getElementById("cc").innerText=jstr;
					/*
					var st1=jstr[0];
					var st2=jstr[1];
					
					var st11="<input type='text' value='"+st1+"'>";
					
					$("#sss").html("ssssssss");*/
			});	
		});
		
	});
	//document.getElementById("sss").append("<p>ssssssssssssssss</p>");
	
</script>
</head>
<body>
<div id="dname">
	<h5>欢迎您【<span>${uname}</span>】</h5>	
	<div id="cc">
	</div>
</div>

<form action="" method="post" name="form2" id="form2" >
<table align="center" width="500px" height="400px" border="1px" bgcolor="lightskyblue">
<tr bgcolor="white" align="center">
<td colspan="7">
恭喜您获得一次砍价机会，好好把握，只有一次
</td>
</tr>
<tr align="center">
<td>物品名称</td>
<td>物品价格</td>
<td>物品类别</td>
<td>您要砍多少钱</td>
<td>操作</td>
</tr>
<tr>
<td align="center">${buyOne.getGname() }</td>
<td id="gprice" align="center">${buyOne.getGprice() }</td>
<td align="center">${buyOne.getGspecie_name() }</td>
<td>
	<input type="hidden" name="gp" id="gp" value="${buyOne.getGprice()}" />
	<input type="hidden" name="fl" id="fl" value="${buyOne.getGprice_float()}" />
	<input type="text" name="pri" id="pri" >
	<input type="hidden" name="newpri" id="newrpi"/>
</td>
<td align="center"><button id="kan" name="kan"><span style="font-size: 30px;color: red">砍</span></button></td>
</tr>
<tr align="center">
<td id="sss" colspan="7">
</td>
</tr>
<tr align="center">
<td colspan="7">
	<input type="button" name="bu" id="bu" />
<a href="shows.jsp">返回购物页面</a>
</td>
</tr>
</table>
</form>
<div id="mydiv"></div>
</body>
</html>