package com.system.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.entity.Message;


/***
 * 添加一条消息
 * 
 * @author Lw
 * 2017年3月29日
 * TODO
 */
@Repository
public interface MessageMapper {
	 public boolean addMess(Message message);//增加一个条消息的记录
	 public boolean  deleteMess(int messageid);//删除一条消息
}
