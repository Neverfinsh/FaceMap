<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <title>FaceMap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="<%=basePath%>assets2/js/jquery.min.js"></script>
     <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4">
     </script>

   <!--  <link rel="stylesheet" href="<%=basePath%>assets2/css/style.css"> -->
    <link rel="stylesheet" href="<%=basePath%>assets2/css/loader-style.css">
    <link rel="stylesheet" href="<%=basePath%>assets2/css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>assets2/css/signin.css">
    

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons 
    <link rel="shortcut icon" href="assets2/ico/minus.png">-->
</head>

<body> 
<!-- 把背景设置成地图 -->

    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <div class="container">
        <div class="" id="login-wrapper">
        
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>家的距离
                            <span>FaceMap</span>
                        </h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                    
                        <form  action="<%=basePath%>/dream/add.do"  method="post"   enctype="multipart/form-data" >
                            <div class="form-group">
                            <!-- useid -->
                               <input type="hidden" id="inputUsernameEmail" class="form-control"  name="userid"  
                                value="1"  />
                            </div>
                            
                            <div class="form-group">
                                <label for="inputUsernameEmail">给家的寄语</label>
                                <input type="text" id="inputUsernameEmail" class="form-control" name="content">
                            </div>
                            
                            <div class="form-group">
                                <label for="inputPassword">图片或者视频</label>
                                <input type="file" id="inputPassword" class="form-control" name="path">
                            </div>
                            
                             <div class="form-group">
                                <label for="inputUsernameEmail">地点</label>
                                <input type="text" id="inputUsernameEmail" class="form-control" name="address">
                            </div>
                        
                            <input type="submit" value="发布" class=" btn btn btn-primary pull-right">
                        </form>
                         <a class="forgotLnk" href="index.html"></a>
                           <div class="row-block">
	                        <div class="row">
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
    <script type="text/javascript" src="<%=basePath%>assets2/js/preloader.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/load.js"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/main.js"></script>
    
<!-- googele的地图显示 -->
  

</body>

</html>

