package com.system.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.print.attribute.HashAttributeSet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.entity.ShareCenter;
import com.system.service.ShareCenterService;

@Controller
@RequestMapping("sharecenter")
public class ShareCenterController {
	
	@Resource
	private ShareCenterService centerservice;
	
	
	@RequestMapping("/findall.do")
	@ResponseBody
	public List findallShare(){
		//建立json格式
    List<Map> list_map=new ArrayList<Map>();
		List <ShareCenter> list=this.centerservice.findallShare();
		  System.out.println("测试查出几条说说"+list.size());
		 for (ShareCenter shareCenter : list) {
		   Map<String,String> map_json=new HashMap<String, String>();
		   
		   map_json.put("lon",shareCenter.getLon() );
		   map_json.put("lat", shareCenter.getLat());
		   map_json.put("content", shareCenter.getContent());
		   map_json.put("address", shareCenter.getAddress());
		   map_json.put("img", shareCenter.getPicpath());
		   map_json.put("usernaeme", shareCenter.getUsername());
		   
		   Date t = shareCenter.getSharedate();//处理trend的日期为yyyy-MM-dd的格式
			  SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			  String res = simpleDateFormat.format(t);
			  System.out.println(res);
			  
		    map_json.put("sharedate", res);
		    list_map.add(map_json);
		    
		}
		return list_map;
		
	}

}
