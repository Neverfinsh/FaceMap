package com.system.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.system.entity.Message;
import com.system.entity.Messageinfo;
import com.system.mapper.MessageMapper;
import com.system.mapper.MessageinfoMapper;


@Repository
public class MessageDaoImp  implements MessageDao{

	@Resource
	private  MessageMapper messmapper;
	
	@Resource
	private MessageinfoMapper messinfomapper;
	
	@Override
	public boolean addMess(Message message) {
		// TODO Auto-generated method stub
		 messmapper.addMess(message);
		return true;
	}

	
	@Override
	public List<Messageinfo> findallMess(int userid) {
		// TODO Auto-generated method stub
		  return messinfomapper.findallMess(userid);
	}


	@Override
	public boolean  deleteMess(int messageid) {
		// TODO Auto-generated method stub
		messmapper.deleteMess(messageid);
		return true;
	}

}
