package com.system.entity;

import java.util.Date;

public class Message {
	private int id;
	private int toid;//给谁的
	private int  formid;//主动添加
	private String content;
	private Date  senddate;//发送的的时间
	private  int type;//发送消息的类型
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getToid() {
		return toid;
	}
	public void setToid(int toid) {
		this.toid = toid;
	}
	public int getFormid() {
		return formid;
	}
	public void setFormid(int formid) {
		this.formid = formid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getSenddate() {
		return senddate;
	}
	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Message(int id, int toid, int formid, String content, Date senddate,
			int type) {
		super();
		this.id = id;
		this.toid = toid;
		this.formid = formid;
		this.content = content;
		this.senddate = senddate;
		this.type = type;
	}
	
	
	public Message() {
		super();
	}
	 

	
	
	

}
