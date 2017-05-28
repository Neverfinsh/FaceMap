package com.system.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.system.entity.FriendShip;
import com.system.entity.User;
import com.system.service.FriendService;
import com.system.service.UserSerivice;


/***
 * 用来进行控制添加朋友关系的id
 * 
 * @author Lw
 * 2017年3月28日
 * TODO
 */
@Controller
@RequestMapping("/friend")
public class FriendController {
	
	
	@Resource
	private UserSerivice uservice;
	
	
	@Resource
	private FriendService fservice;
	
/**
 * 查找出好友的id和一些基本的信息
 * @return
 */

@RequestMapping("/add.do")
  public String addFriend(Model modeldate,HttpServletRequest req){
	 String friendname=req.getParameter("username");
	 System.out.println("测试是否获取了好友的账号"+friendname);
	  List<User> list_user=uservice.findByName(friendname);
	    System.out.println("测试时候获取了值"+list_user.get(0).getId());
	     // modeldate.addAttribute("userlist", list_user.get(0));
	    User user=list_user.get(0);
	    //把userid的值的放在,登录后可以有session进行可以进行调用；
	    req.getSession().setAttribute("toId",user.getId());//userid进行备用
	     req.setAttribute("userlist",user);
    	    return "addFriend";//重新获取页面的数据
}

/****
 * 添加好友的功能	
 */

@RequestMapping("/addship.do")
public String addfriend(FriendShip ship,HttpServletRequest req){
	
	System.out.println("进入添加好友的接口");
	 int toid=(int) req.getSession().getAttribute("toId");
	   System.out.println("被添加方的id"+toid);
	  ship.setToId(toid);//被添加的好友的id;
	  
	 int fromId=(int) req.getSession().getAttribute("userid");
	     System.out.println("主动添加方的id"+fromId);
	  ship.setFromId(fromId);
	    
	  String shipdesc=req.getParameter("shipStatus");//什么类型的好友，好友还是其他的身份
	  int shipstatus=Integer.parseInt(shipdesc);
	      System.out.println("好友关系的描述"+shipstatus);
	       ship.setShipstatus(shipstatus);//插入好友关系描述
	         //往session中存入好友关系的状态字,测试好友的id
	       req.getSession().setAttribute("shiptype", 1);
	boolean flag=fservice.addfriend(ship);
	 if(flag){
		 return "fri_notice";
	 }else{
		 return "addFrind";
	 }
	
}

/****
 * 查找好友的功能；通过自己的id进行查询，与自己是好友的关系的，然后从
 * 好友的id进行二次确认
 */

@RequestMapping("findfriend.do")
  public String findFriendById(HttpServletRequest req){//查询好友的关系；
	
int user_id= (int) req.getSession().getAttribute("userid");
	  List<Integer> list_new=new ArrayList<Integer>();//用力装朋友的  
	  List<Integer> list_id=fservice.findFriendById(user_id);//所有与自己有关的好友的关系
	    for (Integer fromid : list_id) {
	    	System.out.println(fromid);//进行反查查询
	    	  List <Integer> check_id=fservice.findFriendById(fromid);
	    	    if(check_id.contains(user_id)){//fromid是否也存在用户id
	    	    	System.out.println("测试朋友idlist结合"+fromid);
	    	    	list_new.add(fromid);//新的list集合中的id；
	    	     }else{//不存在,则从集合中删除该元素
	    	    	    list_id.remove(fromid);
	    	     }
	}
	  req.getSession().setAttribute("friendslis", list_new);
	  return "allfriend";  
  }

}
