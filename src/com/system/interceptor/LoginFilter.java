package com.system.interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
  
public class LoginFilter extends HttpServlet implements Filter {  
  
    private static final long serialVersionUID = 1L;  
  
    @Override  
    public void destroy() {  
        System.out.println("OnlineFilter destroy>>>>>>>>>>>>>>>>>>");  
    }  
  
    
    /***
     * 判断第一次登陆
     */
    @Override  
    public void doFilter(ServletRequest request, ServletResponse response,  
            FilterChain chain) throws IOException, ServletException {  
          System.out.println("进入监听器");
        /*RequestDispatcher dispatcher = request 
                .getRequestDispatcher("../index.jsp");*/  
          
          //检测是否第一登录，登录后不进行拦截
          
      	  
          HttpServletRequest req = (HttpServletRequest) request;  
          HttpServletResponse resp = (HttpServletResponse) response;
          String url = ((HttpServletRequest) request).getRequestURI();// 获取访问的路径
      	    System.out.println("测试请求访问的路径"+url);
          
  
          String path = req.getContextPath();  
          String basePath = req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+path;  
          HttpSession session = req.getSession(true);  
          
        //  String username = session.getAttribute("userid")+"";; //session中有值   
            Object uid=session.getAttribute("userid");
        	     System.out.println("session中的值"+uid);
                
            if("/FaceMap//user/findbyname.do".equals(url)){//session中有值；
            	  System.out.println("登录第一次放行");
            	     chain.doFilter(req, resp); 
            	
            }else if(uid!=null){//session没有值
            	System.out.println("session中的值"+uid);
        			 System.out.println("session中有值");
        			     chain.doFilter(req, resp);
        		       }
            	 else{
            		 resp.setHeader("Cache-Control", "no-store");  
                     resp.setDateHeader("Expires", 0);  
                      resp.setHeader("Prama", "no-cache");  
               	      System.out.println("被拦截,页面跳转");
                    resp.sendRedirect(basePath+"/login.jsp"); 
        	    	
            		 
            	 }
            	 
            	
            }
           
     
       
    
    
    @Override  
    public void init(FilterConfig arg0) throws ServletException {  
        System.out.println("OnlineFilter init>>>>>>>>>>>>>>>>>");  
    }  
  
}  