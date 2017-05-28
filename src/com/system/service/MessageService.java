package com.system.service;

import java.util.List;

import com.system.entity.Message;
import com.system.entity.Messageinfo;

public interface  MessageService {
	 public boolean addMess(Message message);//增加一个条消息的记录
	 public List<Messageinfo> findallMess(int userid);//即存在toid等于userid的
	 public boolean  deleteMess(int messageid);//删除一条消息

}
