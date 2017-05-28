package com.system.dao;

import java.util.List;

import com.system.entity.ShareCenter;

public interface ShareCenterDao {
	 public List<ShareCenter> findallShare();// 所有的的数据
	   public List<ShareCenter> findfribyId(int userid);

}
