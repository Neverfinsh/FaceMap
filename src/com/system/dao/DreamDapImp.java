package com.system.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.system.entity.Dream;
import com.system.mapper.DreamMapper;

@Repository
public class DreamDapImp implements DreamDao {
	
	
	@Resource
	private DreamMapper dmapper;

	@Override
	public boolean addDream(Dream dream) {
		// TODO Auto-generated method stub
		this.dmapper.addDream(dream);
		 return true;
	}

	@Override
	public List<Dream> findById(int userid) {
		// TODO Auto-generated method stub
		return this.dmapper.findById(userid);
	}

}
