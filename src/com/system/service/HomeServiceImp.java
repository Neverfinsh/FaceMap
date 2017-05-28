package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.HomeDao;
import com.system.entity.Home;

@Service
public class HomeServiceImp implements HomeService {

	
	@Resource
	private HomeDao homedao;
	
	@Override
	public boolean addHome(Home homeinfo) {
		// TODO Auto-generated method stub
		return this.homedao.addHome(homeinfo);
	}

	@Override
	public List<Home> findHomebyId(int userid) {
		// TODO Auto-generated method stub
		return this.homedao.findHomebyId(userid);
	}

}
