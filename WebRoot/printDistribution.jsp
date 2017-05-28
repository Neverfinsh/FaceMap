<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String company_name=request.getParameter("name");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>个人足迹分布分布</title>
<head>

<link rel="stylesheet"  href="<%=basePath%>/f_assets/css/navigation.css">
	<link rel="stylesheet"  href="<%=basePath%>/f_assets/css/left.css">
    <link rel="stylesheet"  href="<%=basePath%>/f_assets/css/right.css">
    <link rel="stylesheet"  href="<%=basePath%>/f_assets/css/common.css">
    <link rel="stylesheet"  href="<%=basePath%>/f_assets/css/bottom.css">


<title></title>
<style type="text/css">

    /** 字体的颜色 **/
    .test_color_white{
	   color:white;
       }

    </style>
</style>


<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
 <script type="text/javascript" src="<%=basePath%>assets2/js/jquery.min.js"></script>
</head>

<body>
  
    <div style="	width: 100%px;
	height: 50px;
	border:  thin  1px red;
	border-color: #0080ff;
	background:#31496F; 	
	margin-bottom:  0px;
	padding-bottom: 0px;
	margin-bottom: 1px;
	padding-bottom: 1px;
		"
	>
      
   <!-- 导航栏部分 -->
      
        <!-- logo设计 -->
             <span style="color:white; margin-left: 50px"> <a id="loginame">个人的足迹分布</a></span>
              <!--好有消息 -->
              <span  class="test_color_white" style=" margin-left: 30px""></span>
              <!--系统消息 -->
              <span class="test_color_white"></span>
              <span   style="color: white; width:50px;height:40px ; margin-left: 700px; padding-bottom: 20px"></span>
              <!-- 退出的功能  -->
              <span class="test_color_white" style=" cursor: pointer;"> <a href="<%=basePath%>/index.jsp">退出</a></span>
       </div>
   <div style="width:100%;height:500px;" id="container"></div>

</body>


<!-- 数据的经纬度从数据库中来，怎么建立多个标志（循环调用） -->
<!-- 数据，从session对  
 -->
 
<script type="text/javascript">

//使用ajax从后台获取数据

$(function(){ 
  $.ajax({
     async:false,// 获取返回值的问题
     url: '<%=basePath%>/sharecontent/findall.do',
     type:'Post',
     data : "userid="+18,
    dataType:'json',
    success: getlonandlat//成功后执行的方法
  })

})


  map = new BMap.Map("container");//加var的是局部变量，不加 的是全局变量
//初始化地图
   function inint_map(){
     //传递数据库中心。
      map.centerAndZoom(new BMap.Point(112.928197,28.173547), 5);//分享足迹
      map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
      map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    //
        var test = {type:BMAP_NAVIGATION_CONTROL_ZOOM } // 添加平移缩放控件(个性化)
         map.addControl(new BMap.NavigationControl(test));// 添加平移缩放控件(个性化)
        map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
    
       var mapType1 = new BMap.MapTypeControl({mapTypes: [BMAP_SATELLITE_MAP,BMAP_NORMAL_MAP]});//
       var mapType2 = new BMap.MapTypeControl({anchor: BMAP_ANCHOR_TOP_LEFT});     
       var overView = new BMap.OverviewMapControl();
       var overViewOpen = new BMap.OverviewMapControl({isOpen:true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT});
       init_point();//初始化标注       
}


//从ajax中传入数据 ,动态获取数据
function getlonandlat(tt){//返回执行的参数额json格式的参数

   var json1 = eval(tt); //数组         
  $.each(json1, function (index, item) { 
     //循环获取数据 
     var lat = json1[index].lat; 
     var lon = json1[index].lon; 
      var p=new BMap.Point(lon,lat)//?这个数据从哪里来
      var marker = new BMap.Marker(p); // 创建标注，为要查询的地方对应的经纬度
      map.addOverlay(marker);
      marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画     
      
      
      var point = new BMap.Point(lon,lat);//从超级链接获取数据
      
      var opts = "<div  style='background-color: #CCE8CF;margin: 0px;padding: 0px'><h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+ json1[index].address+"</h4>"
				+ "<img style='float:right;margin:4px' id='imgDemo'  src='"+ json1[index].img +"'  width='200' height='200' title='图片太美无法显示'/>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+ json1[index].content+"</p>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+ json1[index].sharedate+"</p>"
				+ "</div>";
				
    var infoWindow = new BMap.InfoWindow(opts);  // 创建信息窗口对象     
      marker.addEventListener("click",function(){  
           map.openInfoWindow(infoWindow,point);//打开信息窗口  
        }); 
})

}


//初始化标注
//结合session中的值
function init_point(){

     //  var p=new BMap.Point(112.93219,28.172548)//?这个数据从哪里来
     //  var marker = new BMap.Marker(p); // 创建标注，为要查询的地方对应的经纬度
     // map.addOverlay(marker);
     //添加自定义的标签：
      // var icon = new BMap.Icon('img/1.png', new BMap.Size(20, 32), {//是引用图标的名字以及大小，注意大小要一样
      // anchor: new BMap.Size(10, 30)//这句表示图片相对于所加的点的位置
     // })
     // map.addOverlay(icon);
      
      marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
      
      var point = new BMap.Point(112.93239,28.173148);//从超级链接获取数据
      var opts = "<h4 style='margin:0 0 5px 0;padding:0.2em 0'>汨罗</h4>"
    
				+ "<img style='float:right;margin:4px' id='imgDemo' src='img/1.jpg' width='100' height='200' title='汉韵阁'/>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>循环经济园区</p>"
				+ "</div>";
				
    var infoWindow = new BMap.InfoWindow(opts);  // 创建信息窗口对象     
      marker.addEventListener("click",function(){  
           map.openInfoWindow(infoWindow,point);//打开信息窗口  
        }); 
}

    //添加地图类型和缩略图
    function add_control(){
    
        inint_map();
        init_point();//初始化标注       
        map.addControl(mapType1);          //2D图，卫星图
        map.addControl(overView);          //添加默认缩略地图控件
        map.addControl(overViewOpen);      //右下角，打开
    }
     add_control();
      
</script>
