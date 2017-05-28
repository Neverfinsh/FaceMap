package com.system.entity;

import java.util.Date;

public class ShareContent {

	private Integer id;
	private Integer userid;
	private String  lon;//进度
	private String lat;//
	private String address;
	private String content;
	private  Date  sharedate;
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
	public ShareContent(Integer id, Integer userid, String lon, String lat,
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
	public ShareContent() {
		super();
	}
	
	
	
}
