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
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    
    <div class="container">



        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>登录
                            <span>FaceMap</span>
                        </h1>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                    
                        <form role="form" action="<%=basePath%>/user/findbyname.do" method="post">
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <label for="inputUsernameEmail">用户名</label>
                                <input type="text" id="inputUsernameEmail" class="form-control" name="username">
                            </div>
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                                <label for="inputPassword">密码</label>
                                <input type="password" id="inputPassword" class="form-control" name="userpwd">
                            </div>
                          <!-- 
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox">记住用户名</label>
                            </div>
                             -->  
                         
                            
                            <button class="btn btn btn-primary pull-right" type="submit">
                                                                                        登 录
                            </button>
                            
                 
                            <!-- 注册 -->
                             <div class="checkbox pull-left">
                                <label> <a href="<%=basePath%>/reg.jsp">没有账号,请注册！</a> <a href="<%=basePath%>/resetPwd.jsp">忘记密码</a></label>
                                     </div>
                                     
                                     
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
   <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=6GrEiAhGzOD6etwnHgHkq9pGIrMqPTb4"></script>
    <script type="text/javascript" src="<%=basePath%>assets2/js/map/gmap3.js"></script>
    <script type="text/javascript">
    $(function() {

        $("#test1").gmap3({
            marker: {
                latLng: [-7.782893, 110.402645],
                options: {
                    draggable: true
                },
                events: {
                    dragend: function(marker) {
                        $(this).gmap3({
                            getaddress: {
                                latLng: marker.getPosition(),
                                callback: function(results) {
                                    var map = $(this).gmap3("get"),
                                        infowindow = $(this).gmap3({
                                            get: "infowindow"
                                        }),
                                        content = results && results[1] ? results && results[1].formatted_address : "no address";
                                    if (infowindow) {
                                        infowindow.open(map, marker);
                                        infowindow.setContent(content);
                                    } else {
                                        $(this).gmap3({
                                            infowindow: {
                                                anchor: marker,
                                                options: {
                                                    content: content
                                                }
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    }
                }
            },
            map: {
                options: {
                    zoom: 15
                }
            }
        });

    });
    </script>




</body>

</html>

