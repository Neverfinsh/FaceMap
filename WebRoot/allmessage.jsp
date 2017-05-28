<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 



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

<script language="javascript">
    var numid;
      function Window_Load(){
        var t = document.getElementById("table1");
        var rows = t.getElementsByTagName("tr");
         
        //给tr绑定click事件
        for(var i in rows){
          rows[i].onclick = rowClick;
        }
      }
      function rowClick(e){ 
        alert(this.rowIndex); //显示所点击的行的索引
      }


function toId(id){
alert("可以跳转的方法"+id);
location.href="dealMess.jsp?var="id;

}

 function getId(id){
    alert("进入获取id的方法")
      var tab=document.getElementById("table1");
        alert(tab.rows[1].cells[0].innerHTML);
           toId(tab.rows[1].cells[0].innerHTML);
           
      }
      
           
    //  $(document).ready(function(){ 
     //    alert("进入2")
     //   $("#table1 > tbody > tr").click(function(){
     //        alert(this.rowIndex); 
     //        var id=this.rowIndex;
     //        getId(id);
     //   }); 
    // });
    
                  
</script>




</head>
 
 


<body onload="Window_Load()> 

    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    
    <div class="container">

        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>好友现消息显示
                            <span>FaceMap</span>
                        </h1>
                    </div>
                </div>

            </div>


            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                    
                   
                        
                        <div class="form-group">
                        <table border="1" cellpadding="1"  cellspacing="0" id="table1">
                         <tr>
                           <td   width="110px">发送人id</td>
                            <td   width="110px">发送人</td>
                            <td  width=110px"> 发送时间</td>
                            <td  width="110px">发送内容</td>
                            <td  width="110px">发送类型</td>
                            <td  width="110px">操作</td>
                         </tr>
                         
                         <c:forEach items="${mesList}" var="messageinfo">
                         <tr>
                            <td  id="fromid"  width= "110px">${messageinfo.formid}</td>
                            <td  width= "110px">${messageinfo.username}</td>
                            <td  width= "110px">${messageinfo.username}</td>
                            <td  width="110px">${messageinfo.senddate}</td>
                            <td  width="110px">${messageinfo.content}</td>
                            <td  width="110px">${messageinfo.typedesc}</td>
                            <td  width="110px"><a href="<%=basePath %>/dealMess.jsp"  onclick="Window_Load()"  style="cursor: point">处理</a></td>
                        </tr>

                         

                         </c:forEach>
                         
                        </table>
                        
                        </div>
                        
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
    <script type="text/javascript" src="<%=basePath%>/assets2/js/preloader.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/load.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets2/js/main.js"></script>
</body>

</html>

