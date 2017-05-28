package com.system.controller;



import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.entity.FriendShip;
import com.system.entity.Message;
import com.system.entity.Messageinfo;
import com.system.service.FriendService;
import com.system.service.MessageService;


@Controller
@RequestMapping("message")
public class MessageController {
	
	
	@Resource
	private FriendService friservice;
	
	
	@Resource
	private MessageService mservice;

	/***
	 * 增加一天记录
	 * @return
	 */
	
	@RequestMapping("/addmes.do")
	public String addMess(HttpServletRequest req,Message message){//获取添加双方的值重新，写入数据库中
		//
		System.out.println("进入消息的接口");
		 int toid=(int) req.getSession().getAttribute("toId");
		   System.out.println("被添加方的id"+toid);
		   message.setToid(toid);//
		  
		 int fromId=(int) req.getSession().getAttribute("userid");
		     System.out.println("主动添加方的id"+fromId);
		     message.setFormid(fromId);//
		    
		  String shiptype=req.getSession().getAttribute("shiptype").toString();//什么类型的好友，好友还是其他的身份
		    int type=Integer.parseInt(shiptype);
		      System.out.println("好友关系的描述"+type);
		     message.setType(type);//存入好友的关系
		     boolean flag=mservice.addMess(message);
		      if(flag){//插入成功
		    	  
		    		return "ok";
		      }else{
		    	  return "err";
		      }		       		    	
	}
	
	/****
	 * 查询关于自己的留言
	 */
	
	@RequestMapping("/findall.do")
	public String findallMessage(HttpServletRequest req,Model model){
		int user_id=(int) req.getSession().getAttribute("userid");
		 System.out.println("测试用户的id"+user_id);
		   //F获取message的种类
		     List <Messageinfo> list_message= mservice.findallMess(user_id);    
		       System.out.println("多少条消息"+list_message.size());
		          if(list_message.size()>0){//没有消息进行页面跳转
		        	  System.out.println("测试时候有具体的值"+list_message.get(0).getTypedesc());
				      //穿值的问题；
				      //转化格式
				      //format的格式可以任意   
		        	  
		        	  
				       model.addAttribute("mesList", list_message);
			             return "allMess";
		        	  
		          }else{//没有消息
		        	  return "noMess";
		          }
		       
	}

	
	/******
	 * 查具体message
	*/
	
	@RequestMapping("/getMessinfo.do")
	public String  getMessageinfo(HttpServletRequest req,Model modeldate){ 
		 System.out.println("进入get具体的message的选项中");
		 
	String messageid=req.getParameter("messageid");
       int messid=Integer.parseInt(messageid);
	    int user_id=(int) req.getSession().getAttribute("userid");
		 System.out.println("测试用户的id"+user_id);
		   //F获取message的种类
		     List <Messageinfo> list_message= mservice.findallMess(user_id); 
		        Messageinfo messageinfo=list_message.get(messid-1);//得到具体的
		         System.out.println(messageinfo.getFormid());
		             modeldate.addAttribute("message", messageinfo);
		            return "dealMess";
	}
	
	
	/***
	 * 
	 * 查看后添加好友的信息：
	 * fromid：好友的信息；
	 * fromid相当于toid进行审核；
	 */
	
	
	@RequestMapping("/addMessagain.do")
	public String addFriend(HttpServletRequest req,FriendShip ship){
		System.out.println("进入查看消息后添加好友的接口的接口");
		

		String id1= req.getParameter("id");//重新formid变成toid进行查询
			 System.out.println("消息id"+id1);
			   int id=Integer.parseInt(id1);	
		
		
	 int fromId=(int) req.getSession().getAttribute("userid");
	      System.out.println("用户的id"+fromId);
	         ship.setFromId(fromId);

	String toid1= req.getParameter("formid");//重新formid变成toid进行查询
		 System.out.println("发信息的id"+toid1);
		   int toid=Integer.parseInt(toid1);
			  ship.setToId(toid);
			   ship.setShipstatus(1);//存入好友的关系,写死
			    
		   boolean flag=friservice.addfriend(ship);
		   
			    if(flag){//插入成功
			    	  System.out.println("添加成功");
			    	mservice.deleteMess(id);
			    	 System.out.println(" 添加成功后删除");
		    		return "ok";
		      }else{
		    	      return "err";
		      }		 
	}

	/****
	 *用户在拒绝添后删除消息
	 */
	
	@RequestMapping("deletemess.do")
	public String deleteMess(HttpServletRequest req){
		
		String id1= req.getParameter("messid");//
		  int id=Integer.parseInt(id1);
		    System.out.println("测试拒绝后"+id);
		    boolean flag=this.mservice.deleteMess(id);
		     if(flag){
		    	 return "deletesucess";
		     }else
		    	 return "err";
		     }
	}

