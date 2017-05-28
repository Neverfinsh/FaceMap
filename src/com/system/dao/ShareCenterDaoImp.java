package com.system.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.system.entity.ShareCenter;
import com.system.mapper.ShareCenterMapper;

@Repository
public class ShareCenterDaoImp implements ShareCenterDao {
	
	@Resource
	ShareCenterMapper centermapper;

	@Override
	public List<ShareCenter> findallShare() {
		// TODO Auto-generated method stub
		  return this.centermapper.findallShare();
	}

	@Override
	public List<ShareCenter> findfribyId(int userid) {
		// TODO Auto-generated method stub
		return this.centermapper.findfribyId(userid);
	}

}
