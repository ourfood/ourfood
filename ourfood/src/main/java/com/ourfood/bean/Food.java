package com.ourfood.bean;

import org.springframework.stereotype.Component;

@Component
public class Food {
	private Integer fid;
	private String fname;
	private Double fprice;
	private String detail;
	private String fphoto;
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Double getFprice() {
		return fprice;
	}
	public void setFprice(Double fprice) {
		this.fprice = fprice;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getFphoto() {
		return fphoto;
	}
	public void setFphoto(String fphoto) {
		this.fphoto = fphoto;
	}
	public Food() {
		super();
	}
	public Food(Integer fid, String fname, Double fprice, String detail, String fphoto) {
		super();
		this.fid = fid;
		this.fname = fname;
		this.fprice = fprice;
		this.detail = detail;
		this.fphoto = fphoto;
	}
	@Override
	public String toString() {
		return "Food [fid=" + fid + ", fname=" + fname + ", fprice=" + fprice + ", detail=" + detail + ", fphoto="
				+ fphoto + "]";
	}
	
	
}
