 package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.ShareCenterDao;
import com.system.entity.ShareCenter;

 
@Service
public class ShareCenterServiceImp implements ShareCenterService {

	@Resource
	private ShareCenterDao centerdao;
	
	
	
	
	@Override
	public List<ShareCenter> findallShare() {
		// TODO Auto-generated method stub
		return this.centerdao.findallShare();
	}




	@Override
	public List<ShareCenter> findfribyId(int userid) {
		// TODO Auto-generated method stub
		return this.centerdao.findfribyId(userid);
	}

}
