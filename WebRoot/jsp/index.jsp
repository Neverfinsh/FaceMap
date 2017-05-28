<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>FaceMap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/ico/favicon.html"><!--图标  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/alertify.css" rel="stylesheet">
 
  <!--  <link href="http://fonts.useso.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">-->  
    <link rel="Favicon Icon" href="favicon.ico">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   
    <![endif]-->
  </head>
  
  <!-- 地图加载的问题 -->
  
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
  
<script type="text/javascript">
   var map = new BMap.Map("container");
     //传递数据库中心。
      map.centerAndZoom(new BMap.Point(112.928197,28.173547), 20);
      map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
      map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    //
   var test = {type:BMAP_NAVIGATION_CONTROL_ZOOM } // 添加平移缩放控件(个性化)
     map.addControl(new BMap.NavigationControl(test));// 添加平移缩放控件(个性化)
     map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
    
 
      var marker = new BMap.Marker(new BMap.Point(112.93219,28.172548)); // 创建标注，为要查询的地方对应的经纬度
      map.addOverlay(marker);
      
    //添加自定义的标签：
    // var icon = new BMap.Icon('img/1.png', new BMap.Size(20, 32), {//是引用图标的名字以及大小，注意大小要一样
     //  anchor: new BMap.Size(10, 30)//这句表示图片相对于所加的点的位置
 //    })
 //    map.addOverlay(icon);
      
      marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
  
      var point = new BMap.Point(112.93239,28.173148);//从超级链接获取数据
       var opts = "<h4 style='margin:0 0 5px 0;padding:0.2em 0'>汨罗</h4>"
    
				+ "<img style='float:right;margin:4px' id='imgDemo' src='img/1.jpg' width='100' height='200' title='汉韵阁'/>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>循环经济园区</p>"
				+ "</div>";
            	
    var infoWindow = new BMap.InfoWindow(opts);  // 创建信息窗口对象 
    //   map.openInfoWindow(infoWindow,point);
    
      marker.addEventListener("click",function(){  
           map.openInfoWindow(infoWindow,point);//打开信息窗口  
        }); 
     
       var mapType1 = new BMap.MapTypeControl({mapTypes: [BMAP_SATELLITE_MAP,BMAP_NORMAL_MAP]});//
       var mapType2 = new BMap.MapTypeControl({anchor: BMAP_ANCHOR_TOP_LEFT});
       
       
       var overView = new BMap.OverviewMapControl();
       var overViewOpen = new BMap.OverviewMapControl({isOpen:true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT});
        
    //添加地图类型和缩略图
    function add_control(){
    
        map.addControl(mapType1);          //2D图，卫星图
        map.addControl(overView);          //添加默认缩略地图控件
        map.addControl(overViewOpen);      //右下角，打开
    }
     add_control();
      
       
</script>


  <!-- 地图加载的问题 -->
 
  <body>
    <div id="wrap">
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <div class="logo"> 
          
          <!-- logo -->
          
            <img src="assets/img/logo.png" alt="Realm Admin Template">
          </div>
           <a class="btn btn-navbar visible-phone" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
           <a class="btn btn-navbar slide_menu_left visible-tablet">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>

          <div class="top-menu visible-desktop">
            <ul class="pull-left">
              <li><a id="messages" data-notification="2" href="#"><i class="icon-envelope"></i>好友信息</a></li>
              <li><a id="notifications" data-notification="3" href="#"><i class="icon-globe"></i> 系统功消息</a></li>
            </ul>
            <ul class="pull-right">  
              <li><a href="login.html"><i class="icon-off"></i> 退出</a></li>
            </ul>
          </div>

          <div class="top-menu visible-phone visible-tablet">
            <ul class="pull-right">  
              <li><a title="link to View all Messages page, no popover in phone view or tablet" href="#"><i class="icon-envelope"></i></a></li>
              <li><a title="link to View all Notifications page, no popover in phone view or tablet" href="#"><i class="icon-globe"></i></a></li>
              <li><a href="login.html"><i class="icon-off"></i></a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>

    <div class="container-fluid">
     
      <!-- Side menu -->
      <div class="sidebar-nav nav-collapse collapse">
        <div class="user_side clearfix">
         
           <!--用户的头像  -->
          <img src="assets/img/odinn.jpg" alt="Odinn god of Thunder">
            <!-- 用户的名字 -->
          <h5>刘武</h5>
          <a href="#"><i class="icon-cog"></i> 设置</a>        
        </div>
        <div class="accordion" id="accordion2">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle active b_F79999" href="index-2.html"><i class="icon-dashboard"></i> <span>足迹分布</span></a>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C3F7A7 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse1"><i class="icon-magic"></i> <span>好友</span></a>
            </div>
            <div id="collapse1" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="#"><i class="icon-star"></i> 添加好友</a>
                <a class="accordion-toggle" href=""><i class="icon-list-alt"></i> 好友分布</a>
                <a class="accordion-toggle" href=""><i class="icon-table"></i> 好友关系设置</a>
                <a class="accordion-toggle" href="buttons.html"><i class="icon-circle"></i>好友推荐</a>
              </div>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"><i class="icon-reorder"></i> <span>约定</span></a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle" href="notifications.html"><i class="icon-rss"></i>哪些还没开始的梦想</a>
                <a class="accordion-toggle" href="calendar.html"><i class="icon-calendar"></i>梦开始的地方</a>
                <a class="accordion-toggle" href="gallery.html"><i class="icon-picture"></i>追梦者</a>
              </div>
            </div>
          </div>
          
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F6F1A2" href="tasks.html"><i class="icon-tasks"></i> <span>足迹上传</span></a>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C1F8A9" href="analytics.html"><i class="icon-bar-chart"></i> <span>数据分析</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6" href="tickets.html"><i class="icon-bullhorn"></i> <span>足记分享</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F5C294" href="users.html"><i class="icon-user"></i> <span>个人中心</span></a>
            </div>
          </div>      
        </div>
      </div>
           
      <!-- Main window -->
      

      <div class="main_container" id="dashboard_page">
               
      <iframe src="test2.jsp" width="1200px" height="1000px" scrolling="auto" frameborder="0">
       
       </iframe> 
        
         <div>
        
          
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src='assets/js/sparkline.js'></script>
    <script type="text/javascript" src='assets/js/morris.min.js'></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.masonry.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.imagesloaded.min.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.facybox.js"></script>   
    <script type="text/javascript" src="assets/js/jquery.alertify.min.js"></script> 
    <script type="text/javascript" src="assets/js/jquery.knob.js"></script>
    <script type='text/javascript' src='assets/js/fullcalendar.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.gritter.min.js'></script>
    <script type="text/javascript" src="assets/js/realm.js"></script>
    <script type="text/javascript" src="assets/js/jquery.slimscroll.min.js"></script>
 
  </body>
</html>
