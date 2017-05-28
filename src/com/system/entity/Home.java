package com.system.entity;

import java.util.Date;


/*****
 * 家的距离的entity类
 * 
 * @author Lw
 * 2017年4月7日
 * TODO
 */
public class Home {
	
	private int    id;
	private int userid;
	private String lon;
	private String lat;
	private String address;
	private Date date;
	private String content;
	private String picpath;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicpath() {
		return picpath;
	}
	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}
	
	
	public Home(int id, int userid, String lon, String lat, String address,
			Date date, String content, String picpath) {
		super();
		this.id = id;
		this.userid = userid;
		this.lon = lon;
		this.lat = lat;
		this.address = address;
		this.date = date;
		this.content = content;
		this.picpath = picpath;
	}
	
	
	public Home() {
		super();
	}
	
	
	
}
