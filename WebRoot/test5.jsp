<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>百度地图默认显示卫星地图示例-Mzwu.COM</title>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>
</head>
<body>
<div style="width:800px;height:800px;border:1px solid gray" id="container"></div>
<script type="text/javascript">
var map = new BMap.Map("container", {mapType:BMAP_SATELLITE_MAP});
var point = new BMap.Point(113.082299,28.819752);
map.centerAndZoom(point, 18);
map.addControl(new BMap.NavigationControl());
map.addControl(new BMap.MapTypeControl());
var marker = new BMap.Marker(point);
map.addOverlay(marker);
</script>
</body>
</html>
