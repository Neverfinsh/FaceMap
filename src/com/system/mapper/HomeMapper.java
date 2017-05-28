package com.system.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.entity.Home;

@Repository
public interface HomeMapper {
	public boolean addHome(Home homeinfo);//添加一个记录
	public List<Home> findHomebyId(int userid);
	 

}
