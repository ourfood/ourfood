package com.ourfood.bean;
/**
 *  ��������
 * @author LEIJING
 *
 */
public class Orderitem {
	private Integer orderdetailid;
	private Integer orderid;
	private Integer fid;
	private Double dealprice;
	private Integer num;
	private Double totalprice;
	private int totalcount;
	public Integer getOrderdetailid() {
		return orderdetailid;
	}
	public void setOrderdetailid(Integer orderdetailid) {
		this.orderdetailid = orderdetailid;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public Double getDealprice() {
		return dealprice;
	}
	public void setDealprice(Double dealprice) {
		this.dealprice = dealprice;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(Double totalprice) {
		this.totalprice = totalprice;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public Orderitem() {
		super();
	}
	public Orderitem(Integer orderdetailid, Integer orderid, Integer fid, Double dealprice, Integer num,
			Double totalprice, int totalcount) {
		super();
		this.orderdetailid = orderdetailid;
		this.orderid = orderid;
		this.fid = fid;
		this.dealprice = dealprice;
		this.num = num;
		this.totalprice = totalprice;
		this.totalcount = totalcount;
	}
	
	
}
