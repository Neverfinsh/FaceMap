package com.system.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.system.entity.Dream;
import com.system.service.DreamService;
import com.system.tool.UpPicAndPath;
import com.system.tool.getLongAndLat;

@RequestMapping("dream")
@Controller
public class DreamController {

	
	@Resource
	private DreamService dreamservice;
	
	@RequestMapping("/add.do")
	public String addDream(Dream dream,
			HttpServletRequest req
			,@RequestParam("path") MultipartFile img)//上传图片
			{
		//图片上传，存路径;
		 System.out.println("进入dream的接口中");
	         String pathpic=UpPicAndPath.upPic(img, req);
	         System.out.println("测试路径的地址"+pathpic);
	           dream.setPicpath(pathpic);//插入图片的地址
		//手动存经纬度;
		  String address1=req.getParameter("address");//获取地址，进行经纬度的解析
		   Map<String, String> map=getLongAndLat.getLatitude(address1);
		        System.out.println(map.get("lng"));//进度
		        System.out.println(map.get("lat"));//经纬度		       
		        
		         dream.setLat(map.get("lat"));
		         dream.setLon(map.get("lng"));
		         
		         dream.setUserid(1);//这个接口存在问题userid的事情
		
		boolean flag=this.dreamservice.addDream(dream);
		  if(flag){//成功
			  return "ok";
		  }else{//失败
			  return "dream";
		  }
		
	}
	
	/****
	 * findall的方法
	 */
	@RequestMapping("findbyid.do")
	@ResponseBody
	public Object findById(){
	  List <Map> li=new ArrayList<Map>();
		List <Dream> list=this.dreamservice.findById(1);//测试数据
		 for (Dream dream : list) {
			 Map<String,String> map=new HashMap<String,String>();
			  map.put("lat", dream.getLat());
			  map.put("lon", dream.getLon());
			  map.put("content", dream.getContent());
			  map.put("date", dream.getSharedate()+"");
			  map.put("pic", dream.getPicpath());
			  li.add(map);
	 }
		 return li;
	}
	
	
	
}
