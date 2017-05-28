package com.system.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.system.entity.Home;
import com.system.service.HomeService;
import com.system.service.HomeServiceImp;
import com.system.tool.UpPicAndPath;
import com.system.tool.getLongAndLat;


@Controller
@RequestMapping("/home")
public class HomeController {
	
	@Resource
	private  HomeService homeservice;
	
	
	@RequestMapping("/addhome.do")
	public String addHome(HttpServletRequest req,Home homeinfo,
			@RequestParam("pathpic") MultipartFile img){
		//
		 System.out.println("进入home的接口中");
           String pathpic=UpPicAndPath.upPic(img, req);
              System.out.println("测试路径的地址"+pathpic);
           homeinfo.setPicpath(pathpic);//插入图片的地址
		//插入userid
           String address1=req.getParameter("address");//获取地址，进行经纬度的解析
		   Map<String, String> map=getLongAndLat.getLatitude(address1);
		        System.out.println(map.get("lng"));//进度
		        System.out.println(map.get("lat"));//经纬度		       
		        
		          homeinfo.setLat(map.get("lat"));
		          homeinfo.setLon(map.get("lng"));
		          
		          //
		    int userid=(int) req.getSession().getAttribute("userid");
		          homeinfo.setUserid(userid);//这个接口存在问题userid的事情.setUserid(1);//这个接口存在问题userid的事情
		         
		 //插入lat,lng,插入经纬度
		boolean flag=this.homeservice.addHome(homeinfo);
		 if(flag){//插入成功
				return "showhome";
		 }else{//插入失败
				return "err";
		 }
		
		
	}
	
	/******
	 * 根据用户的id进行查询
	 *  
	 */
	@RequestMapping("/findhomebyId.do")
	@ResponseBody
	public List findHomeById(HttpServletRequest req){
		
		System.out.println("进入查看home的id的接口");
	  List <Map>map_list=new ArrayList<Map>();
		 int userid=(int) req.getSession().getAttribute("userid");
		    List<Home> list_home=this.homeservice.findHomebyId(userid);
		        System.out.println("测试是否有点"+list_home.size());
		        
		        for (Home home : list_home) {//测试json的数组
		        	
		        	Map<String, String> map=new HashMap<String, String>();
		        	
		        	map.put("lon",home.getLon());
					map.put("lat", home.getLat());
					map.put("content", home.getContent());
					map.put("address", home.getAddress());
					map.put("img", home.getPicpath());
					//日期重新编码
				  	  Date t = home.getDate();//处理trend的日期为yyyy-MM-dd的格式
					  SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
					  String res = simpleDateFormat.format(t);
					  System.out.println(res);
					  
					  map.put("date", res);
					  map_list.add(map);
				}
		        
		           return list_home ;
	}

}
