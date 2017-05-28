package com.system.service;

import java.util.List;

import com.system.entity.User;


public interface UserSerivice {
	  public  List<User> findAllUser();
	  public   boolean  addUser(User user);// 增加一个用户进行注册,boolean 进行判断;
	  public   List<User> findByName(String username);//通过用户名进行查询
}
