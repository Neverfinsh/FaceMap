package com.system.service;

import java.util.List;

import com.system.entity.ShareCenter;

public interface ShareCenterService {
	 public List<ShareCenter> findallShare();// 所有的的数据
	   public List<ShareCenter> findfribyId(  int userid);

}
