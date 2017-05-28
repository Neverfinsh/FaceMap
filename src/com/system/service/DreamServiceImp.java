package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.DreamDao;
import com.system.entity.Dream;


@Service
public class DreamServiceImp implements DreamService {

	
	@Resource
	private DreamDao dreamdao;
	
	@Override
	public boolean addDream(Dream dream) {
		// TODO Auto-generated method stub
		return this.dreamdao.addDream(dream);
	}

	@Override
	public List<Dream> findById(int userid) {
		// TODO Auto-generated method stub
		return this.dreamdao.findById(userid);
	}

}
