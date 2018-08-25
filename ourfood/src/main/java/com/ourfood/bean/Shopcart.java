package com.ourfood.bean;

public class Shopcart {
	private Integer scid;
	private Integer userid;
	private Integer fid;
	private Integer num;
	public Integer getScid() {
		return scid;
	}
	public void setScid(Integer scid) {
		this.scid = scid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Shopcart() {
		super();
	}
	public Shopcart(Integer scid, Integer userid, Integer fid, Integer num) {
		super();
		this.scid = scid;
		this.userid = userid;
		this.fid = fid;
		this.num = num;
	}
	
	
}
