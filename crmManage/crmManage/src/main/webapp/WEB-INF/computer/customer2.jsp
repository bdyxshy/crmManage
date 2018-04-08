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
	<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui/jquery.easyui.min.js"></script>

  </head>
  
  <body>
	
	<table class="easyui-datagrid" title="客户信息" style="width:700px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'getCustomers2.do',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'id',width:40">id</th>
				<th data-options="field:'name',width:80">姓名</th>
				<th data-options="field:'sex',width:30,align:'right'">性别</th>
				<th data-options="field:'age',width:50,formatter:function(value){return value.name},align:'right'">年龄段</th>
				<th data-options="field:'tel',width:90">电话</th>
				<th data-options="field:'budget',width:50,align:'center'">预算</th>
				<th data-options="field:'job',width:100,align:'center'">职业</th>
				<th data-options="field:'intention',width:100,align:'center'">意向车型</th>
				<th data-options="field:'remark',width:150,align:'center'">备注</th>
			</tr>
		</thead>
	</table>

  </body>
</html>
