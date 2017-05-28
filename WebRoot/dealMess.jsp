<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String fromid=request.getParameter("messageid");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <title>消息处理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript" src="<%=basePath%>/assets2/js/jquery.min.js"></script>

   <!--  <link rel="stylesheet" href="assets2/css/style.css"> -->
    <link rel="stylesheet" href="<%=basePath %>>/assets2/css/loader-style.css">
    <link rel="stylesheet" href="<%=basePath%>/assets2/css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>/assets2/css/signin.css">
    

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    
    
    <link rel="shortcut icon" href="<%=basePath%>/assets2/ico/minus.png">
</head>

<!-- 页面跳转后调用ajax进行跳转-->

<script type="text/javascript">

//juery的东西；





</script>

<body> 
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    
    <div class="container">

        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>处理消息
                            <span>FaceMap</span>
                        </h1>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                    
                    <!-- 提交的 方式 -->
                    <!-- 在增加一条记录 -->
                        <form  action="<%=basePath%>/message/addMessagain.do" method="post">
                          <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <input type="hidden" id="inputUsernameEmail" class="form-control" name="formid" value="${message.getFormid()}">
                            </div>
                                <!-- 留言的id -->
                                <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <input type="hidden" id="inputUsernameEmail" class="form-control" name="id" value="${message.getId()}">
                            </div>
                            
                            
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <label for="inputUsernameEmail">昵称</label>
                                <input type="text" id="inputUsernameEmail" class="form-control" name="username" value="${message.getUsername()}">
                            </div>
                            
                            <!-- 设置密码进行校验 -->
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                                <label for="inputPassword">添加理由：</label>
                                <input type="text" id="inputPassword" class="form-control" name="userpwd" value="${message.getContent()}">
                            </div>
                            
                             <!-- 设置好友类型 -->
                                  
                             <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                            <label for="inputUsernameEmail">添加好友类型</label></br>
                                                                               好友 <input type="radio" id="inputUsernameEmail"  name="type" value="1">
                                                                      
                            </div>
                             
                          
                           <input type="submit" value="同意" class="btn btn btn-primary pull-right">
                        </form>
                        <div>
                        <a href="<%=basePath%>/message/deletemess.do?messid=${message.getId()}" style="cursor: pointer;font-size: 16">拒绝</a>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 		<p>&nbsp;</p>
 		
   

    </div>
    <div id="test1" class="gmap3"></div>

    <!--  END OF PAPER WRAP -->

    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="<%=basePath%>/assets2/js/preloader.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/load.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/main.js"></script>
    

</body>

</html>

