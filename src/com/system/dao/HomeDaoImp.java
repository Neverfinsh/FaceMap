package com.system.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.system.entity.Home;
import com.system.mapper.HomeMapper;


@Repository
public class HomeDaoImp implements HomeDao{
	
	@Resource
	private HomeMapper homemapper;

	@Override
	public boolean addHome(Home homeinfo) {
	         this.homemapper.addHome(homeinfo);
		        return true;
	}

	@Override
	public List<Home> findHomebyId(int userid) {
		
		return  this.homemapper.findHomebyId(userid);
	}

}
