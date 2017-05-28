package com.system.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.system.entity.ShareContent;
import com.system.mapper.ShareContentMapper;



@Repository
public class ShareContentDaoImp implements ShareContentDao {

	@Resource
	private ShareContentMapper  smapper;
	
	@Override
	public boolean addShareContent(ShareContent share) {
		this.smapper.addShareContent(share);
		return true;
	}

	@Override
	public List<ShareContent> findById(int userid) {
		// TODO Auto-generated method stub
		return this.smapper.findById(userid);
	}

}
