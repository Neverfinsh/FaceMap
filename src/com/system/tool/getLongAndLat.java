
package com.system.tool;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

public class getLongAndLat {
	
	/**
	 * 来自百度进行代码重构：
	 */
	private static final String BAIDU_APP_KEY = "42b8ececa9cd6fe72ae4cddd77c0da5d";
	
	public static Map<String, String> getLatitude(String address) {
		try {
			// 将地址转换成utf-8的16进制
			address = URLEncoder.encode(address, "UTF-8");
			// 如果有代理，要设置代理，没代理可注释
			// System.setProperty("http.proxyHost","192.168.172.23");
			// System.setProperty("http.proxyPort","3209");

			URL resjson = new URL("http://api.map.baidu.com/geocoder/v2/?address="
					+ address + "&output=json&ak="+ BAIDU_APP_KEY);
		
			BufferedReader in = new BufferedReader(new InputStreamReader(
			resjson.openStream()));
			String res= "";
			StringBuilder sb = new StringBuilder("");
			while ((res=in.readLine())!= null) {
				    sb.append(res);
			}
			in.close();
			String str = sb.toString();
			System.out.println("return json:" + str);//json是空的json
			if(str!=null&&!str.equals("")){
				Map<String, String> map = null;
				int lngStart = str.indexOf("lng\":");
				int lngEnd = str.indexOf(",\"lat");
				int latEnd = str.indexOf("},\"precise");
				if (lngStart > 0 && lngEnd > 0 && latEnd > 0) {
					String lng = str.substring(lngStart + 5, lngEnd);
					
					String lat = str.substring(lngEnd + 7, latEnd);
					map = new HashMap<String, String>();
					map.put("lng", lng);
					map.put("lat", lat);
					return map;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
