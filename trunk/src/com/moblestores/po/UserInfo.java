package com.moblestores.po;

import java.util.Date;

public class UserInfo {
	
	//用户编号
	private int user_id;
	
	//用户名
	private String user_name;
    
    //用户password
	private String user_passwd;

	//创建时间
	private Date create_time;


	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int userId) {
		user_id = userId;
	}


	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String userName) {
		this.user_name = userName;
	}

	public String getUser_passwd() {
		return user_passwd;
	}

	public void setUser_passwd(String userPasswd) {
		this.user_passwd = userPasswd;
	}
	
	
	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date createTime) {
		create_time = createTime;
	}
	
}
