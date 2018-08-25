package com.ourfood.bean;

import org.springframework.stereotype.Component;

@Component
public class Resuser {
	private Integer userid;
	private String username;
	private String userpwd;
	private String phone;
	private String email;
	private String sex;
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Resuser() {
		super();
	}
	public Resuser(Integer userid, String username, String userpwd, String phone, String email, String sex) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		this.phone = phone;
		this.email = email;
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Resuser [userid=" + userid + ", username=" + username + ", userpwd=" + userpwd + ", phone=" + phone
				+ ", email=" + email + ", sex=" + sex + "]";
	}
	
	
}
