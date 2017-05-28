package com.system.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.system.entity.FriendShip;
import com.system.mapper.FriendMapper;

@Repository
public class FriendDaoImp implements FriendDao {
	
	@Resource
	private FriendMapper fmapper;
	
	@Override
	public boolean addfriend(FriendShip ship) {
		this.fmapper.addfriend(ship);
		return true;
	}

	@Override
	public List<Integer> findFriendById(int id) {
		// TODO Auto-generated method stub
		return this.fmapper.findFriendById(id);
	}

}
