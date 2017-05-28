package com.system.tool;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import javax.json.JsonObject;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import Decoder.BASE64Decoder;


/***
 * 功能：给经纬度进行纠偏
 * 
 * @author Lw
 * 2017年4月2日
 * 
 */
public class GetLatAndLonRight {
	
	
	 public static Map<String ,String> getRight(String lat,String lon){//返回俩个参数
		try {
	System.out.println("进入纠偏的的工具类");
	   System.out.println("测试传入的经纬度"+lat+lon);
    URL resjson1 = new URL("http://api.map.baidu.com/ag/coord/convert?from=0&to=4&x="+lat+"&y="+lon);
	    BufferedReader inn = new BufferedReader(new InputStreamReader(
	     resjson1.openStream()));
			String resr= "";
			StringBuilder sb = new StringBuilder("");
			while ((resr=inn.readLine())!= null) {
				    sb.append(resr);
			}
			inn.close();
			String str = sb.toString();
			System.out.println("return 纠偏的json:" + str);//json是空的json
			if(str!=null&&!str.equals("")){//对数组进行判空
				Map<String, String> map = null;
				//对字符串进行解析,得到base6吗的解析方法；  //进行解码：
			 JSONObject	obj = JSONObject.fromObject(str); 
				    String b_lat=(String) obj.get("x");
				    String r_lat= GetLatAndLonRight.getFromBASE64(b_lat);
				    
				    String b_lng=(String) obj.get("y");
				    String r_lng=GetLatAndLonRight.getFromBASE64(b_lng);
		              System.out.println("测试是否进行纠正了"+r_lat+r_lng);
					map = new HashMap<String, String>();
					map.put("lng", r_lat);
					map.put("lat", r_lng);
					
					
					return map;
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	 

	 /*******
	  * 对返回值进行base64进行解码
	  * 
	  */
 // 将 BASE64 编码的字符串 s 进行解码 
	public static String getFromBASE64(String s) { 
	if (s == null) return null; 
	BASE64Decoder decoder = new BASE64Decoder(); 
	try { 
	byte[] b = decoder.decodeBuffer(s); 
	return new String(b); 
	} catch (Exception e) { 
	return null; 
	} 



}
}
		 
		 
