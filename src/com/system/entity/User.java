package com.system.entity;


/***
 * 
 * 
 * @author Lw
 * 2017年3月21日
 * TODO:user的实体类
 */

public class User {
	private Integer id;
	private String username;
	private String userpwd;
	private String loginame;
	private String useremail;
	private String usersex;
	private String  useraddress;
	private Integer userstatus;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getLoginame() {
		return loginame;
	}
	public void setLoginame(String loginame) {
		this.loginame = loginame;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	public Integer getUserstatus() {
		return userstatus;
	}
	public void setUserstatus(Integer userstatus) {
		this.userstatus = userstatus;
	}
	public User(Integer id, String username, String userpwd, String loginame,
			String useremail, String usersex, String useraddress,
			Integer userstatus) {
		super();
		this.id = id;
		this.username = username;
		this.userpwd = userpwd;
		this.loginame = loginame;
		this.useremail = useremail;
		this.usersex = usersex;
		this.useraddress = useraddress;
		this.userstatus = userstatus;
	}
	public User() {
		super();
	}
	

}
