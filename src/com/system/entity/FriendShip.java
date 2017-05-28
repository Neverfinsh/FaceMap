package com.system.entity;

/****
 * 添加好友的id
 * 
 * @author Lw
 * 2017年3月28日
 * TODO
 */
public class FriendShip {
	private int id;
	private int fromId;//主动添加的一方的id
	private int toId;//被添加的一方
	private int shipstatus;//好友关系描述
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFromId() {
		return fromId;
	}
	public void setFromId(int fromId) {
		this.fromId = fromId;
	}
	public int getToId() {
		return toId;
	}
	public void setToId(int toId) {
		this.toId = toId;
	}
	public int getShipstatus() {
		return shipstatus;
	}
	public void setShipstatus(int shipstatus) {
		this.shipstatus = shipstatus;
	}
	public FriendShip(int id, int fromId, int toId, int shipstatus) {
		super();
		this.id = id;
		this.fromId = fromId;
		this.toId = toId;
		this.shipstatus = shipstatus;
	}
	public FriendShip() {
		super();
	}
	
	
	
	

}
