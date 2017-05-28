<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>消息中心</title>



<!--width=device-width 设置屏幕为设备的宽度    initial-scale=1默认满屏   maximum-scale=1 允许最大缩放  user-scalable=no不允许缩放-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=no">

<!--1、链接外部bootstrap.css文件-->
<link href="<%=basePath%>assets/bootrap/bootstrap.min.css" type="text/css" rel="stylesheet" />

<style>
.b{
border:1px solid #DDDDDD
}


  
  .test_color_white{
	   color:white;
       }


</style>

 <script type="text/javascript" src="<%=basePath%>/assets2/js/jquery.min.js"></script>
 
<script type="text/javascript" >

      $(document).ready(function(){ 
       
        $("#table1 > tbody > tr").click(function(){
             alert(this.rowIndex); 
             var id=this.rowIndex;
             getId(id);
        }); 
     });
    
    function getId(id){
   
         var tab=document.getElementById("table1");
             fromid=tab.rows[1].cells[0].innerHTML;
               
                 toId(id);
                  }
     
      
      function toId(id){
     
           //window.location.href="http://dealMess.jsp?messageid="+id;
              //  window.open("<%=basePath%>dealMess.jsp?messageid="+id )
               window.open("<%=basePath%>/message/getMessinfo.do?messageid="+id )
}
  
</script>

</head>

<body background="<%=basePath%>/img/bg.jpg" onload="getfromId">

 <div style="	width: 100%px;
	height: 50px;
	border:  thin  1px red;
	border-color:#black;
	background:#31496F; 	
	margin-bottom:  0px;
	padding-bottom: 0px;
	margin-bottom: 1px;
	padding-bottom: 1px;
		"
	>
      
   <!-- 导航栏部分 -->
      
        <!-- logo设计 -->
             <span  class="test_color_white"> <a   class="test_color_white" id="loginame" style="font-size: 20">消息中心</a></span>
              <!--好有消息 -->
              <span  class="test_color_white" style=" margin-left: 30px"">好友信息</span>
              <!--系统消息 -->
              <span class="test_color_white">系统消息</span>
              <span   style="color: white; width:50px;height:40px ; margin-left: 700px; padding-bottom: 20px"></span>
              <!-- 退出的功能  -->
              <span class="test_color_white" style="">退出</span>
       </div>

<div class="container b">

<table class="table-striped table-hover table-bordered table" id="table1">

<tr class="info" >

<td>发送人</td>
<td>发送时间</td>
<td>发送内容</td>
<td>发送类型</td>
<td>操作</td>
</tr>


                   <c:forEach items="${mesList}" var="messageinfo">
                         <tr>
                            <td style="display: none;" id="fromid"  width= "110px">${messageinfo.formid}</td>
                            <td  width= "110px">${messageinfo.username}</td>
                            <td  width="110px">${messageinfo.senddate}</td>
                            <td  width="110px">${messageinfo.content}</td>
                            <td  width="110px">${messageinfo.typedesc}</td>
                            <td  width="110px"><a  onclick="getfromId()"  style="cursor: point">处理</a></td>
                        </tr>
                        </c:forEach>


</table>
</div>
</body>
</html>

