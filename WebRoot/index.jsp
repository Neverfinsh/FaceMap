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
  <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">  -->  
    <link rel="shortcut icon" href="<%=basePath%>/assets/ico/favicon.html"><!--图标  -->
    <link href="<%=basePath%>/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/css/theme.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=basePath%>/assets/css/alertify.css" rel="stylesheet">
 
  <!--  <link href="http://fonts.useso.com/css?family=Open+Sans:400,700" rel="stylesheet" type="text/css">-->  
  <!--  <link rel="Favicon Icon" href="favicon.ico">-->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   
    <![endif]-->
    
 <script type="text/javascript">
 //上传头像的点击事件；
 function getUserPic(){
  alert("点击上传头像")
 }
 
 </script>
   
  </head>
  
  <body>
    <div id="wrap">
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <div class="logo"> 
          <!-- logo -->
            <img src="<%=basePath%>/assets/img/logo.png" alt="Realm Admin Template">
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
           
            <ul class="pull-right">  
              <li><a href="<%=basePath%>/login.jsp" onclick="Destroysesson()" ><i class="icon-off"></i> 退出</a></li>
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
          <img src="<%=basePath%>/assets/img/odinn.jpg"   alt="Odinn god of Thunder"  id="userimg"   style="cursor: pointer;" onclick="getUserPic()" >
            <!-- 用户的名字 -->
          <h5><%=session.getAttribute("loginame")%></h5>
          <a href="#"><i class="icon-cog"></i></a>        
        </div>
        <div class="accordion" id="accordion2">
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle active b_F79999"  target="_blank"  href="<%=basePath%>/printDistribution.jsp"><i class="icon-dashboard"></i> <span>足迹分布</span></a>
            </div>
          </div>
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_C3F7A7 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse1"><i class="icon-magic"></i> <span>好友</span></a>
            </div>
            
            <div id="collapse1" class="accordion-body collapse">
              <div class="accordion-inner">
                <a class="accordion-toggle"  target="_blank"  href="<%=basePath %>/addFriend.jsp"><i class="icon-star"></i> 添加好友</a>
                <a class="accordion-toggle"   target="_blank" href="<%=basePath %>/friend/findfriend.do"><i class="icon-list-alt"></i> 好友分布</a>
            </div>
            </div>
          </div>
          
          <!--
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6 collapsed" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"><i class="icon-reorder"></i> <span>约定</span></a>
            </div>
            <div id="collapse2" class="accordion-body collapse">
              <div class="accordion-inner">
                 <a class="accordion-toggle"   target="_blank"  href="<%=basePath%>/dream.jsp"><i class="icon-rss"></i>梦想</a>
                 <a class="accordion-toggle"     target="_blank" href="<%=basePath%>/up_home.jsp"><i class="icon-calendar"></i>家</a>
              </div>
            </div>
          </div>
            -->
          
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F6F1A2"  target="_blank" href="<%=basePath %>/up_print.jsp" target="_self"><i class="icon-tasks"></i> <span>足迹上传</span></a>
            </div>
          </div>
          <!-- 数据中心，二期开始工作 -->
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_9FDDF6"  target="_blank"  href="<%=basePath%>/ShareCenter.jsp"><i class="icon-bullhorn"></i> <span>足记中心</span></a>
            </div>
          </div> 
          <div class="accordion-group">
            <div class="accordion-heading">
              <a class="accordion-toggle b_F5C294"  target="_blank"  href="<%=basePath %>/message/findall.do"><i class="icon-user"></i> <span>消息中心</span></a>
            </div>
          </div>      
        </div>
      </div>
           
           
      <!-- Main window -->
         <div class="main_container" id="dashboard_page">
          <iframe src="<%=basePath%>/test2.jsp" width="1200px" height="1000px" scrolling="auto" frameborder="0"></iframe>
         <div>
                  
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/raphael-min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src='<%=basePath%>/assets/js/sparkline.js'></script>
    <script type="text/javascript" src='<%=basePath%>/assets/js/morris.min.js'></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.dataTables.min.js"></script>   
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.masonry.min.js"></script>   
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.imagesloaded.min.js"></script>   
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.facybox.js"></script>   
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.alertify.min.js"></script> 
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.knob.js"></script>
    <script type='text/javascript' src='<%=basePath%>/assets/js/fullcalendar.min.js'></script>
    <script type='text/javascript' src='<%=basePath%>/assets/js/jquery.gritter.min.js'></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/realm.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.slimscroll.min.js"></script>
  </body>
</html>