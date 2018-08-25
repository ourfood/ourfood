package com.ourfood.bean;

import java.sql.Date;

public class Resorder {
	private Integer orderid;
	private Integer userid;
	private String address;
	private String tel;
	private Date ordertime;//下单时间
	private Date deliverytime;//送达时间
	private String ps; //订单备注
	private Integer status; //订单状态
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	public Date getDeliverytime() {
		return deliverytime;
	}
	public void setDeliverytime(Date deliverytime) {
		this.deliverytime = deliverytime;
	}
	public String getPs() {
		return ps;
	}
	public void setPs(String ps) {
		this.ps = ps;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Resorder() {
		super();
	}
	public Resorder(Integer orderid, Integer userid, String address, String tel, Date ordertime, Date deliverytime,
			String ps, Integer status) {
		super();
		this.orderid = orderid;
		this.userid = userid;
		this.address = address;
		this.tel = tel;
		this.ordertime = ordertime;
		this.deliverytime = deliverytime;
		this.ps = ps;
		this.status = status;
	}
	@Override
	public String toString() {
		return "Resorder [orderid=" + orderid + ", userid=" + userid + ", address=" + address + ", tel=" + tel
				+ ", ordertime=" + ordertime + ", deliverytime=" + deliverytime + ", ps=" + ps + ", status=" + status
				+ "]";
	}
	
	
}
