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
	<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/bootstrap/easyui.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="jquery-easyui/demo/demo.css">
	<script type="text/javascript" src="jquery-easyui/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
		$().ready(function(){
			$('#customerTable').datagrid({    
			    url:'getCustomersByCondition.do',
			    toolbar:"#tb",//工具栏
			    singleSelect:true,//单选
			    pagination:true, //分页
			    pageNumber:1,
			    pageSize:5,
			    pageList:[2,5,10],
			    remoteSort:false,//客户端排序
			    columns:[[    
			        {field:'id',title:'id',width:40,sortable:true}, //列排序   
			        {field:'name',title:'姓名',width:80},    
			        {field:'sex',title:'性别',width:30},    
			        {field:'age',title:'年龄段',width:50,formatter:function(value){return value.name}},    
			        {field:'tel',title:'电话',width:90},    
			        {field:'budget',title:'预算',width:50},    
			        {field:'job',title:'职业',width:100},    
			        {field:'intention',title:'意向',width:100},    
			        {field:'remark',title:'备注',width:150}   
			    ]]    
			}); 
		})
		function searchCustomer(){
			$('#customerTable').datagrid("load",{
				name:$("#searchName").val()
			})
		}
	</script>
  </head>
  
  <body>
	<table id="customerTable" style="width:700px;height:300px;"></table> 
	<div id="tb">
		<input id="searchName" class="easyui-textbox" style="width:100px"> 
		<a id="btn" href="javascript:searchCustomer()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">搜索</a>  
	</div>
  </body>
</html>
