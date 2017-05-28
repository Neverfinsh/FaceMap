package com.system.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.system.entity.ShareContent;

public interface  ShareContentService {
	  public  boolean  addShareContent(ShareContent share);//增加一条记录
	  public  List<ShareContent> findById(int userid);//通过session中的id进行查询
}
