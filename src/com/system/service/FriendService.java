package com.system.service;

import java.util.List;

import com.system.entity.FriendShip;

public interface FriendService {
	public boolean addfriend(FriendShip ship);//添加好友的功能
	public List<Integer> findFriendById(int id);//查询好友的关系；


}
