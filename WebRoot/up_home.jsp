<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'up_home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	 .text_color{
	   color: white;
	   margin-top: 30px;
	   padding-top: 30px;
	 }
	
	</style>

  </head>
  
  <body background="img/home1.jpg">
  <!-- 整个form表单的div -->
  <div style=" border: 1px solid red;width: 400px;height: 500px;text-align: center; float: right;margin-right: 100px;"> 
          
          <form  action="<%=basePath%>/home/addhome.do"  method="post" enctype="multipart/form-data">
                          
                            <div class="text_color">
                            
                            <!-- useid -->
                               <input type="hidden" id="inputUsernameEmail" class="form-control"  name="userid"  
                                value="1"  />
                            </div>
                            
                            <div class="text_color">
                                <label for="inputUsernameEmail">给家的寄语</label>
                                <input type="text" id="inputUsernameEmail" class="form-control" name="content"   style=" height: 60px;width: 200px ">
                            </div>
                            
                            
                            
                            <div class="text_color">
                                <label for="inputPassword">图片或者视频</label>
                                <input type="file" id="inputPassword" class="form-control" name="pathpic">
                            </div>
                            
                             <div class="text_color">
                                <label for="inputUsernameEmail">地点</label>
                                <input type="text" id="inputUsernameEmail" class="form-control" name="address" style="height: 30px">
                           </div>
                           
                         
                            <input type="submit" value="发布" style="margin-top: 30px;width: 70px;height: 30px">
                        </form>
     </div>
       
     
    
        
  </body>
</html>
