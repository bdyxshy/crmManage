<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'customer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table>
    	<tr>
    		<th>id</th>
    		<th>姓名</th>
    		<th>性别</th>
    		<th>年龄段</th>
    		<th>电话</th>
    		<th>预算</th>
    		<th>职业</th>
    		<th>意向车型</th>
    		<th>备注</th>
    	</tr>
    	<c:forEach items="${customers}" var="cus">
    	<tr>
    		<td>${cus.id}</td>
    		<td>${cus.name }</td>
    		<td>${cus.sex }</td>
    		<td>${cus.age }</td>
    		<td>${cus.tel }</td>
    		<td>${cus.budget}</td>
    		<td>${cus.job}</td>
    		<td>${cus.intention}</td>
    		<td>${cus.remark}</td>
    	</tr>
    	</c:forEach>
    </table>
  </body>
</html>
