<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type"/>
<title>
3D地图展示</title>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=46ce9d0614bf7aefe0ba562f8cf87194&v=1.1&services=true">
</script>
</head>
<body>
<div style="width:520px;height:340px;border:1px solid gray" id="container">
</div>
</body>
</html>
<script type="text/javascript">

var map = new BMap.Map("container", {mapType:BMAP_PERSPECTIVE_MAP});
var point = new BMap.Point(113,28);
map.setCurrentCity("北京");           // 设置地图显示的城市 此项是必须设置的
map.centerAndZoom(point,19);
map.enableScrollWheelZoom(true);
</script>


