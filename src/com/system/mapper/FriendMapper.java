package com.system.mapper;




import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.entity.FriendShip;

@Repository
public interface FriendMapper {
	public boolean addfriend(FriendShip ship);//添加好友的功能
    public List<Integer> findFriendById(int id);//查询好友的关系

}
