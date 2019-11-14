<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="libs/jquery-3.4.1.js" ></script>
<script type="text/javascript">
$(function(){
	$("#kan").click(function(){
		var p=document.form2.pri.value;
		var fP=document.form2.fl.value;
		var pp=document.form2.gp.value;
		var gid=document.form2.gid.value;
		$.getJSON("changeSpe.do?p="+p+"&fP="+fP+"&pp="+pp+"&gid="+gid, function(jstr){
			$("#msg").html(jstr[0]);
			if(jstr[1]!=pp){
				$("#gprice").html(pp+"<span style='color: red;font-size: 40px'>×</span>"+"<br>"+jstr[1]);
			}
		});	
	});	
});
</script>
<style>
	#dimg{
		height: 80px;
		width: 80px;
		
		position: absolute;
		top: 230px;
		left: 960px;
	}
</style>
</head>
<body>
<div id="dname">
	<h5>欢迎您【<span>${uname}</span>】</h5>	
</div>
<div id="dimg">
<button id="kan" name="kan"><img height="60px" width="60px" src="uppic/kan.jpg" /> </button>
</div>

<form action="" method="post" name="form2" id="form2">
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
<td>您的理想价位</td>
<td width="20%">操作</td>

</tr>

<tr>
<td align="center">${buyOne.getGname() }</td>
<td id="gprice" align="center">${buyOne.getGprice() }</td>
<td align="center">${buyOne.getGspecie_name() }</td>
<td>	
	<input type="hidden" name="gid" id="gid" value="${buyOne.getGid()}" />
	<input type="hidden" name="gp" id="gp" value="${buyOne.getGprice()}" />
	<input type="hidden" name="fl" id="fl" value="${buyOne.getGprice_float()}" />
	<input type="text" name="pri" id="pri" >
	<input type="hidden" name="newpri" id="newrpi"/>
</td>
<td align="center">
</td>
</tr>

<tr align="center">
<td id="msg" colspan="7">

</td>
</tr>

<tr align="center">
<td colspan="7">
	<input type="button" name="buy" id="buy" value="购买"/>
<a href="shows.jsp">返回购物页面</a>
</td>
</tr>

</table>
</form>
</body>
</html>