<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String userid=request.getSession().getAttribute("userid").toString();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>足迹上传</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- 引入bootsrtraop的文件css的文件 -->
	<link href="<%=basePath%>/f_assets/bootstrap.min.css"  type="text/css" rel="stylesheet">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">

.text_white{
color: white;

}

/*div之间存*/

.div_test{

margin-bottom: 30px;
}

</style>


  </head>
  
  <body  background="<%=basePath%>/img/fbg.jpg">
 
    <div style="text-align: center; size: 9"><label class="text_white" style="text-align: center;">足迹上传</label></br></div>
 
   <div class="div_test" style="margin-left: 50px">
   
  
    <!-- 上传 图片的form表单-->
      <form  action="<%=basePath%>/sharecontent/addcontent.do"  method="post"  enctype="multipart/form-data" >
       
         <!-- 上传的userid -->
                <input type="hidden" id="inputUsernameEmail" class="form-control"  name="userid"  
                                value="<%=userid%>"  />
       
       <div class="div_test">
        <label  class="text_white" style="margin-top: 20px;padding-top: 20px; text-align: center;">说说内容</label>
              <input type="text" id="" name="content" style="height: 70px ;width: 300px"></br> 
        </div>
        
        
        
         <div class="div_test">  
        <label  class="text_white">图片</label>
       <input type="file"id="" name="path"  class="text_white"/></br>
        </div>
        
          <div class="div_test">  
        <label   class="text_white">地点</label>
        <input type="text" id="" name="address"></br>
          </div>
         
 <div>  
            <input type="submit" value="发布"  > 
              </div>      
      </form>
    
   
   </div>
  
   
  
     
  </body>
</html>
