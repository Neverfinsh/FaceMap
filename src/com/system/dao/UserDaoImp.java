 package com.system.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.system.entity.User;
import com.system.mapper.UserMapper;


@Repository //dao层注释
public class UserDaoImp implements UserDao {

	
	@Resource
	private UserMapper umapper;
	

	@Override
	public List<User> findAllUser() {
     return this.umapper.findAllUser();
	}


	@Override
	public boolean addUser(User user) {
		this.umapper.addUser(user);
		return true;
	}

/***
 * 用户的进行登录验证
 */
	@Override
	public List<User> findByName(String username) {
		return  this.umapper.findByName(username);
	}

}
