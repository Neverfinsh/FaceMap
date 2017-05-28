package com.system.entity;

import java.util.Date;


/***
 * 
 *  梦想模块:实体类，参照说说模块：时刻的提醒自己可以坚持自己的梦想：不同年龄段
 * 
 * @author Lw
 * 2017年3月28日
 * TODO
 */

public class Dream {
	
	private Integer id;
	private Integer userid;
	private String  lon;//进度
	private String lat;//
	private String address;
	private String content;
	private  Date   sharedate;
	private String  picpath;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getLon() {
		return lon;
	}
	public void setLon(String lon) {
		this.lon = lon;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getSharedate() {
		return sharedate;
	}
	public void setSharedate(Date sharedate) {
		this.sharedate = sharedate;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	
	public Dream(Integer id, Integer userid, String lon, String lat,
			String address, String content, Date sharedate, String picpath) {
		super();
		this.id = id;
		this.userid = userid;
		this.lon = lon;
		this.lat = lat;
		this.address = address;
		this.content = content;
		this.sharedate = sharedate;
		this.picpath = picpath;
	}
	
	
	public Dream() {
		super();
	}
	
	
	

}
