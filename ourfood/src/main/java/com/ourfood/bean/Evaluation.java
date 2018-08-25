package com.ourfood.bean;

import java.util.Date;

public class Evaluation {
	private Integer eid;
	private Integer orderid;
	private Integer userid;
	private String elevel;
	private String ecomment;
	private String eimg;
	private Date etime;
	public Integer getEid() {
		return eid;
	}
	public void setEid(Integer eid) {
		this.eid = eid;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getElevel() {
		return elevel;
	}
	public void setElevel(String elevel) {
		this.elevel = elevel;
	}
	public String getEcomment() {
		return ecomment;
	}
	public void setEcomment(String ecomment) {
		this.ecomment = ecomment;
	}
	public String getEimg() {
		return eimg;
	}
	public void setEimg(String eimg) {
		this.eimg = eimg;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	public Evaluation() {
		super();
	}
	public Evaluation(Integer eid, Integer orderid, Integer userid, String elevel, String ecomment, String eimg,
			Date etime) {
		super();
		this.eid = eid;
		this.orderid = orderid;
		this.userid = userid;
		this.elevel = elevel;
		this.ecomment = ecomment;
		this.eimg = eimg;
		this.etime = etime;
	}
	
	
}
