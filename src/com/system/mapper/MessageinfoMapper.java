package com.system.mapper;

import java.util.List;

import com.system.entity.Messageinfo;

public  interface  MessageinfoMapper {
	
	 public List<Messageinfo> findallMess(int userid);//即存在toid等于userid的
	
}
