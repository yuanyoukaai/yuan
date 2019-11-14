<%@page import="com.biz.UsedBiz"%>
<%@page import="com.biz.IUsedBiz"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="abb.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<c:if test=""></c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript" src="libs/jquery-3.4.1.js" ></script>
		<style>
			.biaoqian{
				display: block;
				border-radius: 10px;
			}
			#ds{
				position: absolute;
				left:45%;
				top: 50px;
			}
			#d1{
				width: 200px;
				height: 50px;
				border: 2px solid black;
				background-color: lightcyan;
				position: absolute;
				left: 100px;
				top: 200px;
			}
			#d2{
				width: 200px;
				height: 50px;
				border: 2px solid black;
				background-color: lightcyan;
				position: absolute;
				left: 100px;
				top: 255px;
			}
			#d3{
				width: 200px;
				height: 50px;
				border: 2px solid black;
				background-color: lightcyan;
				position: absolute;
				left: 100px;
				top: 306px;
			}
			#d4{
				width: 200px;
				height: 50px;
				border: 2px solid black;
				background-color: lightcyan;
				position: absolute;
				left: 100px;
				top: 357px;
			}
			p{
				font-size: 25px;
				text-align: center;
				margin: 0 auto;
			}
			a{
				color: black;
			}
			li{
				list-style:none;
			}
			.liebiao{
				width: 400px;
				height: 200px;
				border: 1px solid honeydew;
				
				background-color: antiquewhite;
				position: absolute;
				top: 200px;
				left: 300px;
				display: inline-block;
			}
			#guanli{
				position: absolute;
				left: 91%;
				color: white;
			}
		</style>
		<script>
			 $(function(){
				$('.liebiao').hide();
				$('.biaoqian').mouseover(function(){
					$(this).css('background-color','white');
					if($(this).attr('id')=="d1"){
						$('#dA1').show();
					}
					if($(this).attr('id')=="d2"){
						$('#dA2').show();
					}
					if($(this).attr('id')=="d3"){
						$('#dA3').show();
					}
					if($(this).attr('id')=="d4"){
						$('#dA4').show();
					}
				})
				$('.biaoqian').mouseout(function(){
					$('.liebiao').hide();
					if($(this).attr('id')=="d1"){
						$('#dA1').show();
					}
					if($(this).attr('id')=="d2"){
						$('#dA2').show();
					}
					if($(this).attr('id')=="d3"){
						$('#dA3').show();
					}
					if($(this).attr('id')=="d4"){
						$('#dA4').show();
					}
					
					$(this).css('background-color','lightcyan');
				})
				$('a').mouseover(function(){
					$(this).css('color','deepskyblue');
				})
				$('a').mouseout(function(){
					$(this).css('color','black');
				})
				
			}) 
		
		</script>
	</head>
	<body>
		<div id="dname">
			<h5>欢迎您【<span>${uname}</span>】</h5>
			<a href="manager.jsp" id="guanli">管理</a>
		</div>
		<div id="ds" >
			<form action="findsome.do" method="post">
				<input type="text"/ name="find">
			 	<input type="submit" value="查找">
			</form>
		</div>
		<div id="d1" class="biaoqian" >
			<p>数码设备</p>
		</div>
		<div id="d2" class="biaoqian">
			<p>运动器械</p>
		</div>
		<div id="d3" class="biaoqian">
			<p>生活用品</p>
		</div>
		<div id="d4" class="biaoqian">
			<p>书籍</p>
		</div>
		<div id="dA1" class="liebiao">
			<ul>
				<c:forEach items="${li1}" var="s1">
					<li>
						<input type="hidden" name="sname" value="${s1 }">
						<a href='findSpecieGoods.do?sname=${s1 }'>${s1 }</a>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div id="dA2" class="liebiao">
			<ul>
				<c:forEach items="${li2}" var="s2">
					<li><a href='findSpecieGoods.do?sname=${s2 }'>${s2 }</a></li>
				</c:forEach>
			</ul>
		</div>
		<div id="dA3" class="liebiao">
			<ul>
				<c:forEach items="${li3}" var="s3">
					<li><a href='findSpecieGoods.do?sname=${s3 }'>${s3 }</a></li>
				</c:forEach>
			</ul>
		</div>
		<div id="dA4" class="liebiao">
			<ul>
				<c:forEach items="${li4}" var="s4">
					<li><a href='findSpecieGoods.do?sname=${s4 }'>${s4 }</a></li>
				</c:forEach>
			</ul>
		</div> 
		<div id="tianjia">
			<a href="add.jsp?uid=${uid }">我要卖东西</a></tr>
			<a href="findMyGoods.do?uid=${uid }">查看我的物品信息</a>
		</div>
	</body>
</html>
