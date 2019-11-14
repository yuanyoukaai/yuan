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
		<style>
			#bd1{
				width: 400px;
				height: 400px;
				background-color: honeydew;
				display: inline-block;
				position: absolute;
				top: 20px;
				left: 30%;
			}
			img{
				height: 300px;
				width: 230px;
			}
			#right{
				width: 170px;
				height: 400px;
				background-color: red;
				display: inline-block;
				position: absolute;
				top: 0;
				left: 230px;
			}
			span{
				top: 100px;
				margin: 40px;
				color: yellow;
				font-size: 20px;
			}
		</style>
	</head>
	<body>
		<div id="bd1">
			<img  src="uppic/default.jpg"/>	
			<div id="right">
				<span>价格</span>
				<
			</div>
		</div>
	</body>
</html>
