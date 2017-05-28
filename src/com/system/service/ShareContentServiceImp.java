package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.ShareContentDao;
import com.system.entity.ShareContent;
import com.system.mapper.ShareContentMapper;

@Service
public class  ShareContentServiceImp implements ShareContentService {

	
	@Resource
  private ShareContentDao sharedao;
	
	@Override
	public boolean addShareContent(ShareContent share) {
		// TODO Auto-generated method stub
		return this.sharedao.addShareContent(share);
	}

	@Override
	public List<ShareContent> findById(int userid) {
		// TODO Auto-generated method stub
		return this.sharedao.findById(userid);
	}

}
