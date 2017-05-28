<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!-- 引入样式 -->
	
	<link rel="stylesheet"  href="<%=basePath%>/f_assets/css/navigation.css">
	<link rel="stylesheet"  href="<%=basePath%>/f_assets/css/left.css">
    <link rel="stylesheet"  href="<%=basePath%>/f_assets/css/right.css">
    <link rel="stylesheet"  href="<%=basePath%>/f_assets/css/common.css">
    <link rel="stylesheet"  href="<%=basePath%>/f_assets/css/bottom.css">
    
    <!--公共的样式 -------------->
    <style type="text/css">
    
    
    
    /** 字体的颜色 **/
    .test_color_white{
	   color:white;
       }

    </style>
<!------------------------->
    
    
 <!------------------------->
    
    
  </head>
  
  
  
  
  
  <body>
  
  <div style="height: 100%px;width: 100%px;"  >
  
  <!-- ------------------------------------------------------------------- -->
   <div style="	width: 100%px;
	height: 50px;
	border:  thin  1 px;
	border-color: #0080ff;
	background:#31496F; 	
	margin-bottom:  0px;
	padding-bottom: 0px
	"
	>
      
   <!-- 导航栏部分 -->
      
        <!-- logo设计 -->
             <span style="color:white;"> <a id="loginame">FaceMap</a></span>
              <!--好有消息 -->
              <span  class="test_color_white" style=" margin-left: 30px"">好友信息</span>
              <!--系统消息 -->
              <span class="test_color_white">系统消息</span>
              <span   style="color: white; width:50px;height:40px ; margin-left: 700px; padding-bottom: 20px">图标</span>
              <!-- 退出的功能  -->
              <span class="test_color_white" style="">退出</span>
       </div>

  <!-- ------------------------------------------------------------------- -->
     <div style=" margin-top: 0px;padding-top: 0px;">





        <!-- 左边部分 -->
         <div  style="width:143px; height:600px; float: left; margin-top: 0px;background-color: #31496F">
             <!--  头像和昵称-->
                  <div  id="user_pic_loginname" style="margin-bottom: 1px" >
                      <span  id="userpic">
                          <img   id="userpic" alt="" src="<%=basePath %>/f_assets/f_img/a.jpg" style="height: 80px;width: 80px ;background: #31496F">
                               </span>
                       <span  >
                         <!--用户 的登录的名字 -->
                          <a>昵称</a>
                              </span>
                   </div>
                   <!-- 功能分区 -->
                      <div id="function"  style="margin-top:1px"></div>

   <ul class="function_ul" >
     
     <li    class="function_ul_li">足迹分布</li>
     <li    class="function_ul_li">足迹上传</li>
     <li    class="function_ul_li" >足迹分享</li>
     <li   id="friend" class="function_ul_li">好友</li>
     
        <ul    id="friend1"  class="function_ul_li_ul">
        
           <li   class="function_ul_li_ul_li">a</li>
           <li   class="function_ul_li_ul_li">b</li>
           <li   class="function_ul_li_ul_li">c</li>
        </ul>
        
     <li  id="date" class="function_ul_li">约定</li>
         <ul class="function_ul_li_ul">
         
           <li  class="function_ul_li_ul_li">c</li>
           <li  class="function_ul_li_ul_li">d</li>
           <li  class="function_ul_li_ul_li">e</li>
        </ul>
     <li   class="function_ul_li">个人中心</li>
    </ul>
   
   </div>        
                                 
      </div>   
      
         
        <!-- 右边部分 -->
         <div  style="; width: 1055px; height:600px; float: left; margin: 0px;padding: 0px"/>
             <iframe src="<%=basePath%>/test2.jsp" width="1055x" height="1050px" scrolling="auto" frameborder="0" style="margin: 0px;padding: 0px"></iframe>
         </div>     

   </div>      
   </body>
   
</html>
