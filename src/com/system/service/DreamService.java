package com.system.service;

import java.util.List;

import com.system.entity.Dream;

public interface DreamService {
	
	public boolean addDream(Dream dream);//增加一条梦想的内容
	public List<Dream> findById(int userid);

}
