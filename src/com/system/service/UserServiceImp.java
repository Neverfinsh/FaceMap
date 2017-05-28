package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.UserDao;
import com.system.entity.User;



@Service
public class UserServiceImp  implements UserSerivice{

	
	@Resource
	private UserDao userdao;
	
	@Override
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return this.userdao.findAllUser();
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		return this.userdao.addUser(user);
	}

	

/***
 * 用户的进行登录验证
 */
	
	@Override
	public List<User> findByName(String username) {
		// TODO Auto-generated method stub
		return this.userdao.findByName(username);
	}

}
