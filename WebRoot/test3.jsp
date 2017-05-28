<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String company_name=request.getParameter("name");
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        <title>  hello  </title>
    
<head>

<title></title>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
</head>
<body>
<div style="width:980px;height:1000px;border:1px solid gray"    align="center" id="container"></div>
</body>


<!-- 数据的经纬度从数据库中来，怎么建立多个标志（循环调用） -->

<!-- 数据，从session对  
 -->
<script type="text/javascript">

   var map = new BMap.Map("container");
   //传递数据库中心。
      map.centerAndZoom(new BMap.Point(112.97935279,28.21347823), 20);
      map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
      map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    //
   var test = {type:BMAP_NAVIGATION_CONTROL_ZOOM } // 添加平移缩放控件(个性化)
     map.addControl(new BMap.NavigationControl(test));// 添加平移缩放控件(个性化)
     map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
     
 //
      var marker = new BMap.Marker(new BMap.Point(113.082299,28.819752)); // 创建标注，为要查询的地方对应的经纬度
        map.addOverlay(marker);
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
     //添加自定义的标签：
          
      var marker = new BMap.Marker(new BMap.Point(116.417, 39.909)); // 创建标注，为要查询的地方对应的经纬度
        map.addOverlay(marker);
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画

     //创建小狐狸
    var pt = new BMap.Point(113.082299,28.819752);
    var myIcon = new BMap.Icon("http://developer.baidu.com/map/jsdemo/img/fox.gif", new BMap.Size(200,100));  //定义自己的标注 
    var marker22 = new BMap.Marker(pt,{icon:myIcon});  // 创建标注
    map.addOverlay(marker22);              // 将标注添加到地图中
    //给maker22添加一个点击事件
  
      
   
  
    var point = new BMap.Point(113.082299,28.819752);//从超级链接获取数据
    var opts = "<h4 style='margin:0 0 5px 0;padding:0.2em 0'>汨罗</h4>"
    
				+ "<img style='float:right;margin:4px' id='imgDemo' src='img/1.jpg' width='100' height='200' title='汉韵阁'/>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>循环经济园区</p>"
				+ "</div>";      
          //闭包的思想（好处：获取局部变量，永远保持在内存
          
       
       var infoWindow = new BMap.InfoWindow(opts);  // 创建信息窗口对象 
          map.openInfoWindow(infoWindow,point);
       
       
       var mapType1 = new BMap.MapTypeControl({mapTypes: [BMAP_NORMAL_MAP,BMAP_HYBRID_MAP]});//
       var mapType2 = new BMap.MapTypeControl({anchor: BMAP_ANCHOR_TOP_LEFT});
       var overView = new BMap.OverviewMapControl();
       var overViewOpen = new BMap.OverviewMapControl({isOpen:true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT});
   
    //添加地图类型和缩略图
    function add_control(){   
        map.addControl(mapType1);  
       //2D图，卫星图
        map.addControl(overView);          //添加默认缩略地图控件
        map.addControl(overViewOpen);      //右下角，打开
    }
    
     add_control();
      
       
</script>
