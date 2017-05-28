package com.system.dao;

import java.util.List;

import com.system.entity.Home;

public interface HomeDao {
	public boolean addHome(Home homeinfo);//添加一个记录
	public List<Home> findHomebyId(int userid);
}
