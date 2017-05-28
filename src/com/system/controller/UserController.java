package com.system.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.entity.User;
import com.system.service.UserSerivice;
import com.system.tool.MD5Util;


@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserSerivice uservice;
	
	@RequestMapping("/findall.do")
	public String  findAllUser(){
   List<User> list=this.uservice.findAllUser();
     HashMap<String, String> result=new HashMap<String, String>();
        result.put("info", list.get(1).getLoginame());
		return "ok";
				
	}
	
	
	/**
	 * 用户注册；添加一个用户
	 * @return
	 */
	
@RequestMapping("adduser.do")
 public String addUser(User user){
	//进行md5加密；
	String  usepwd=user.getUserpwd();//获取密码；
	   String converpwd=MD5Util.convertMD5(usepwd);
	    user.setUserpwd(converpwd);//重新进行加密算法;
	boolean flag=this.uservice.addUser(user);//flag进行判断
	 if(flag){//进行判断
		 return "login";
	 }else{//返回到注册的页面
		 return "reg";//返回到注册的页面;
	 }
	}


/***
 * 用户进行登录，通过查找;
 * 1.多用户进行查询;
 * 
 * 2.ajax 进行异步刷新;
 */


@RequestMapping("/findbyname.do")
 public String findByName(String username,HttpServletRequest req){
	 System.out.println("测试是否得到了username的值"+username);
	 String userPwd=req.getParameter("userpwd");
	   System.out.println("测试是否获取了密码"+userPwd);
	  List<User> list=this.uservice.findByName(username);
         System.out.println("测试是否获取了user用户的值"+list.size());
          System.out.println("测试获取MD5后的密码"+list.get(0).getUserpwd());
          System.out.println("解密:"+MD5Util.convertMD5(list.get(0).getUserpwd()));
              
	       //进行比较密码
           //如果有重名的现象
	     for (int i = 0; i < list.size(); i++) {
            //存在用户
	    	 if(MD5Util.convertMD5(list.get(i).getUserpwd()).equals(userPwd)){//防止空指针异常
            //存储用户的基本信息；
	    		HttpSession session=req.getSession(); //进行传值；、
	    		  session.setAttribute("userid",list.get(i).getId());//userid
	    		  session.setAttribute("loginame",list.get(i).getLoginame());//匿名
	    		     return "index";
	    	 }else{
	    		     return "login";
	    	 }
		}  
	 return null;
 }




	
}
