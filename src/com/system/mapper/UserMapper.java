package com.system.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.entity.User;


/***
 * 
 * 
 * @author Lw
 * 2017年3月17日
 * 
 * TODO:是否继承base
 */

@Repository
public interface UserMapper {
    public   List<User> findAllUser(); // 查询出所有的的user用户
    public   boolean  addUser(User user);// 增加一个用户进行注册,boolean 进行判断;
    public   List<User> findByName(String username);//通过用户名进行查询
    
}
