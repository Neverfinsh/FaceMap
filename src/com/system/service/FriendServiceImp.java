package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.FriendDao;
import com.system.entity.FriendShip;

@Service
public class FriendServiceImp implements  FriendService{

	
	@Resource
	private FriendDao friendao;
	
	@Override
	public boolean addfriend(FriendShip ship) {
		// TODO Auto-generated method stub
		return this.friendao.addfriend(ship);
	}

	@Override
	public List<Integer> findFriendById(int id) {
		// TODO Auto-generated method stub
		return this.friendao.findFriendById(id);
	}

}
