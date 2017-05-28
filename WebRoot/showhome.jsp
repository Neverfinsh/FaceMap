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
    <title>My JSP 'test.jsp' starting page</title>
<head>

<title></title>
 <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
 <script type="text/javascript" src="<%=basePath%>assets2/js/jquery.min.js"></script>
 <script type="text/javascript" src="<%=basePath%>assets/js/jquery.min.js"></script>
</head>

<body style="margin: 1px;padding: 1px">

<div style="width: 100%px;
	height: 50px;
	border:  thin  1px red;
	border-color:#black;
	background:#31496F; 	
	margin-bottom:  0px;
	padding-bottom: 0px;
	margin-bottom: 1px;
	padding-bottom: 1px;
		"
	>
      
   <!-- 导航栏部分 -->
      
        <!-- logo设计 -->
             <span style="color:white;"> <a id="loginame" style="text-align: center; margin-left: 90px;font-size: 30">家的距离</a></span>
              <!--好有消息 -->
              <span  class="test_color_white" style=" margin-left: 30px""></span>
              <!--系统消息 -->
              <span class="test_color_white"></span>
              <span   style="color: white; width:50px;height:40px ; margin-left: 700px; padding-bottom: 20px"></span>
              <!-- 退出的功能  -->
              <span class="test_color_white" style="cursor: pointer;"><a href="<%=basePath %>/index.jsp" style="color: white;">退出</a></span>
       </div>

   <div style="width:100%;height:550px;border:1px solid gray;margin: 0px;padding: 0px" id="container"></div>

</body>


<!-- 数据的经纬度从数据库中来，怎么建立多个标志（循环调用） -->
<!-- 数据，从session对  
 -->
 
 
<script type="text/javascript">

   var map = new BMap.Map("container");//全局变量
     //传递数据库中心。
     function inint_map(){
     
     
      map.centerAndZoom(new BMap.Point(112.928197,28.173547), 5);
      map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
      map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    //
     var test = {type:BMAP_NAVIGATION_CONTROL_ZOOM } // 添加平移缩放控件(个性化)
        map.addControl(new BMap.NavigationControl(test));// 添加平移缩放控件(个性化)
        map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
     //
       var mapType1 = new BMap.MapTypeControl({mapTypes: [BMAP_SATELLITE_MAP,BMAP_NORMAL_MAP]});//
       var mapType2 = new BMap.MapTypeControl({anchor: BMAP_ANCHOR_TOP_LEFT});  
       var overView = new BMap.OverviewMapControl();
       var overViewOpen = new BMap.OverviewMapControl({isOpen:true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT});
    
     }
     
    
   
$(function(){

 $.ajax({
 async:false,
 url:'<%=basePath%>/home/findhomebyId.do',
 type:'Post',
 dataType:'json',
 success:getHome
 
 });
 });
 
 
function getHome(tt){
alert(' 调用ajax的值')
alert(tt);
var json1=eval(tt);
alert("知信没有")
alert(json1)

//循环取数据、
 $.each(json1, function (index, item) { 
  
     var lat = json1[index].lat; 
     var lon = json1[index].lon;
         alert(lat ,lon);//测试能够获取到值
     
 
  var p=new BMap.Point(lon,lat)//家的距离
      var marker = new BMap.Marker(p); // 创建标注，为要查询的地方对应的经纬度
      map.addOverlay(marker);
      marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画     
     //创建窗口的对象
     var point = new BMap.Point(lon,lat);//从超级链接获取数据
     
      var opts = "<div><h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+ json1[index].address+"</h4>"
				+ "<img style='float:right;margin:4px' id='imgDemo'   src='"+ json1[index].img +"'  width='100' height='200' title='图片太美无法显示'/>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+ json1[index].content+"</p>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+ json1[index].date+"</p>"
				+ "</div>";
				
      //设置点击事件
      var infoWindow = new BMap.InfoWindow(opts);  // 创建信息窗口对象     
         marker.addEventListener("click",function(){  
           map.openInfoWindow(infoWindow,point);//打开信息窗口  
 
 });
 
 });

}



               
       //添加地图类型和缩略图
       function add_control(){
        inint_map();
        map.addControl(mapType1);          //2D图，卫星图
        map.addControl(overView);          //添加默认缩略地图控件
        map.addControl(overViewOpen);      //右下角，打开
       }
        add_control();
      
  
</script>
