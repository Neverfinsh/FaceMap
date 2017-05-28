package com.system.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.system.entity.ShareCenter;
import com.system.entity.ShareContent;
import com.system.service.ShareCenterService;
import com.system.service.ShareContentService;
import com.system.tool.GetLatAndLonRight;
import com.system.tool.getLongAndLat;


@Controller
@RequestMapping("/sharecontent")
public class ShareContentController {
	
	@Resource
	private ShareContentService shareservice;
	
	
	//添加username
	@Resource
	private ShareCenterService centerservice;
	
	


	@RequestMapping("/addcontent.do")
	public String addShareContent(HttpServletRequest req,
			                      ShareContent share
			                    , @RequestParam("path") MultipartFile img//上传图片
			                      ){
	   System.out.println("进入分享说说的接口");
	    	//调用百度地图的接口进行解析利用经纬度和地址进行解析
		   String address1=req.getParameter("address");//获取地址，进行经纬度的解析
		   
		   Map<String, String> map=getLongAndLat.getLatitude(address1);
		   
		       System.out.println("测试经纬度的接口类");
		        System.out.println(map.get("lng"));//进度
		        System.out.println(map.get("lat"));//经纬度	
		            //进行调用经纬度纠偏的功能
		        Map<String, String> map2=new GetLatAndLonRight().getRight(map.get("lat"), map.get("lng"));
		          System.out.println("测试纠偏后的经纬度"+map2.get("lat"));
		        
		        share.setLat(map.get("lat"));
			     share.setLon(map.get("lng"));
			       //进行调用经纬度纠偏的功能
			     int userid=(int) req.getSession().getAttribute("userid");
			        share.setUserid(userid);
		       // 上传图片同时记录值
		         String str2 = img.getOriginalFilename();
				// 图片的后缀名；
				int num1 = str2.lastIndexOf("."); // 最后一个.号
				int len1 = str2.length();
				// 只剩下图片的名字没有其他 多余的信息
			     String filetype = str2.substring(num1, len1);
				// System.out.println(str3);
				  System.out.println("文件的后缀名" + filetype);
               // 项目的路径  
		         String tcatpath = req.getServletContext().getRealPath("/");
		         try {//上传图片
					img.transferTo(new File(tcatpath + "imge\\"
								+ img.getOriginalFilename()));
				 System.out.println("图片上传成功");
					 //写入地址
		         share.setPicpath("imge\\"+ img.getOriginalFilename());//写入地址
		     
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        	         
		         
             //重新添加到新的share中的数据
		 
		boolean flag=shareservice.addShareContent(share);
			if(flag){//成功后直接跳转到，足迹分布的页面。
				return "printDistribution";
			}else{
				return "Share";
			}
		
		
	}
	
	
/***
 * 通过查询往sessin中传值
 * @return
 */
	
@RequestMapping("/findall.do")
@ResponseBody
public  List   findById(HttpServletRequest request){
  //自己登陆后的useid进行查询
 	 List<Map> list=new ArrayList<Map>();//
 	  int userid=(int) request.getSession().getAttribute("userid");
	   List<ShareContent> list_share=shareservice.findById(userid);//list的集合
	    
	      System.out.println("是否有数据"+list_share.size());
	      System.out.println("测试是否获取了值"+list_share.get(0).getAddress());
	      
	      for (ShareContent shareContent : list_share) {
	    	 //定一个map的集合,每一个对象 一个json的对象
	        Map<String,String> map=new HashMap<String, String>();
			map.put("lon",shareContent.getLon() );
			map.put("lat", shareContent.getLat());
			map.put("content", shareContent.getContent());
			map.put("address", shareContent.getAddress());
			map.put("img", shareContent.getPicpath());
			//
			 Date t = shareContent.getSharedate();//处理trend的日期为yyyy-MM-dd的格式
			  SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			  String res = simpleDateFormat.format(t);
			    System.out.println("测试个人足迹中的日期"+res);
			       map.put("sharedate", res);
			  
			list.add(map);
		}
	   return  list;
	      
}
	
	
	/******
	 * 
	 * 添加所有朋友的地点进行循环调用：
	 * 利用传过来的list集合进行循环调用.
	 */
@RequestMapping("/findallfri.do")
@ResponseBody
public  List   findallfri(HttpServletRequest req){
	//获取朋友的list结婚
   List<Integer> list_fri=(List<Integer>) req.getSession().getAttribute("friendslis");
     System.out.println( "测试获取朋友share"+list_fri.size()+list_fri.get(0));
       List<Map> list=new ArrayList<Map>();//用来存放list的map 
    
     for (Integer friid : list_fri) {//朋友useid
		 List<ShareCenter> list_share=centerservice.findfribyId(friid);//list的集合
		  //朋友的id   
		  System.out.println("是否有数据"+list_share.size());
		  
		  System.out.println("测试是否获取了值"+list_share.get(0).getAddress());
		  //
		  for (ShareCenter shareContent : list_share) {
		    	 //定一个map的集合,每一个对象 一个json的对象
		        Map<String,String> map=new HashMap<String, String>();
				map.put("lon",shareContent.getLon() );
				map.put("lat", shareContent.getLat());
				map.put("content", shareContent.getContent());
				map.put("address", shareContent.getAddress());
				map.put("img", shareContent.getPicpath());
				  Date t = shareContent.getSharedate();//处理trend的日期为yyyy-MM-dd的格式
				   SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
				     String res = simpleDateFormat.format(t);
				       System.out.println("测试个人足迹中的日期"+res);
				       
				   map.put("sharedate", res);
				   map.put("username", shareContent.getUsername());
				  
				list.add(map);
			}
		  
	}
     
     return  list;//所有list的集合

}



	
}
