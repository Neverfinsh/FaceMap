package com.system.dao;

import java.util.List;

import com.system.entity.ShareContent;

public interface ShareContentDao {
	  public  boolean  addShareContent(ShareContent share);//增加一条记录
	  public  List<ShareContent> findById(int userid);//通过session中的id进行查询
}
