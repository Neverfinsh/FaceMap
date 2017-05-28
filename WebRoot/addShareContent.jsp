<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'f_dream.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
	 .td_text{
	             margin-top: 30px;
	             padding-top: 30px
	 
	 }
	
	
	
	</style>

  </head>
  
  <body background="<%=basePath %>/img/sharecontent.jpg">
      <div style="margin-left: 50px;height: 400px;width: 250px; ">
        <table>
           <form  action="" method="post">
             <tr>
            <td style=" margin-top: 30px;padding-top: 30px;">    <label>梦想的内容</label>   </td>
            <td style=" margin-top: 30px;padding-top: 30px;">    <input type="text" style=" height: 60px"></br>   </td>
              <tr>
              <tr>
                 <td class="td_text"> <label>地点</label></td>
                      <td  class="td_text">   <input type="text" id="" name=""><br></td>
                      
                       <tr  style="text-align: center; margin-left: 50px" ><td  class="td_text" style="text-align: center;">    <input type="submit" value="提交" style="height: 40px;width: 60px;text-align: center;"></td></tr>
                   
             </form>
           
             </table>
      </div>
  </body>
</html>
