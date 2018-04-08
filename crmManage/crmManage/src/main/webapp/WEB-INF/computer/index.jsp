<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Full Layout - jQuery EasyUI Demo</title>

<link rel="stylesheet" type="text/css"
	href="jquery-easyui/themes/material/easyui.css">

<link rel="stylesheet" type="text/css"
	href="jquery-easyui/themes/icon.css">


<script type="text/javascript" src="jquery-easyui/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	function openTab(text, url, iconCls) {
		if ($("#tabs").tabs("exists", text)) {
			$("#tabs").tabs("select", text);
		} else {
			var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='"
					+ url + "'></iframe>";

			$("#tabs").tabs("add", {
				title : text,
				iconCls : iconCls,
				closable : true,
				content : content,
			//href : url
			});
		}
	}
</script>

</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false"
		style="height:60px;background:#B3DFDA;padding:10px">念字4S店管理系统</div>

	<div data-options="region:'west',split:true,title:'West'"
		style="width:200px;">


		<div class="easyui-accordion" data-options="fit:true,border:false"
			style="width:190px;">
			<div title="About" data-options="iconCls:'icon-ok',selected:true"
				style="overflow:auto;padding:10px;">
				<a href="javascript:openTab('客户列表','searchAll3.do','icon-yxjhgl')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-yxjhgl'"
					style="width: 150px">客户管理</a> <a
					href="javascript:openTab('记录列表','show3.shtml','icon-khkfjh')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-khkfjh'"
					style="width: 150px">记录管理</a>

			</div>
			<div title="Help" data-options="iconCls:'icon-help'"
				style="padding:10px;">sfd</div>
			<div title="TreeMenu" data-options="iconCls:'icon-search'"
				style="padding:10px;">sfd</div>

		</div>



	</div>
	<div data-options="region:'center'">

		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页" data-options="iconCls:'icon-home'">
				<div align="center" style="padding-top: 100px">
					<font color="red" size="10">欢迎使用</font>
				</div>
			</div>


		</div>
	</div>

	<div data-options="region:'south',border:false"
		style="height:50px;background:#A9FACD;padding:10px;">south
		region</div>

	<div data-options="region:'east',border:false,split:true"
		style="width:150px;background:#A9FACD;padding:10px;">south
		region</div>
</body>
</html>