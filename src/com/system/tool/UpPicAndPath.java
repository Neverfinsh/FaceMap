package com.system.tool;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;


/***
 * 工具类：
 * 
 * 
 * @author Lw
 * 2017年3月28日
 * TODO
 */
public class UpPicAndPath {
	
	
	
	
	/***
	 * 上传图片,返回路径
	 * @return
	 */
public  static String upPic(MultipartFile img,HttpServletRequest req){
	
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
    try {//上传图片,上传到某一个文件夹中
		img.transferTo(new File(tcatpath + "imge\\"
					+ img.getOriginalFilename()));
	    System.out.println("图片上传成功");
		 //写入地址,返回地址
	    
	    String newpath="imge\\"
					+ img.getOriginalFilename();
		 return newpath;

	} catch (IllegalStateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}

   	         
}

}
