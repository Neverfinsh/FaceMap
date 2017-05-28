package com.system.dao;

import java.util.List;

import com.system.entity.User;


/***
 * 
 * 
 * @author Lw
 * 2017年3月17日
 * 
 * TODO:接口进行解耦性
 */
public interface UserDao {
   public  List<User> findAllUser();
   public  boolean  addUser(User user);// 增加一个用户进行注册,boolean 进行判断;
   public   List<User> findByName(String username);//通过用户名进行查询
   
}
