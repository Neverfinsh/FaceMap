package com.system.dao;

import java.util.List;

import com.system.entity.FriendShip;

public interface FriendDao {
	public boolean addfriend(FriendShip ship);//添加好友的功能
	 public List<Integer> findFriendById(int id);//查询好友的关系；

}
