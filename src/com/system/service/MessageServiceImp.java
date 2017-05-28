package com.system.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.dao.MessageDao;
import com.system.entity.Message;
import com.system.entity.Messageinfo;


@Service
public class MessageServiceImp implements MessageService {

	@Resource
	private MessageDao messgedao;
	
	
	
	@Override
	public boolean addMess(Message message) {
		// TODO Auto-generated method stub
		return messgedao.addMess(message);
	}

	@Override
	public List<Messageinfo> findallMess(int userid) {
		// TODO Auto-generated method stub
		return messgedao.findallMess(userid);
	}

	@Override
	public boolean deleteMess(int messageid) {
		// TODO Auto-generated method stub
		return messgedao.deleteMess(messageid);
	}

}
