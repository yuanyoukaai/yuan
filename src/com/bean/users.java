package com.bean;

import java.io.Serializable;

public class users implements Serializable{
	private int uid;
	private String uname;
	private String accunt;
	private String passwd;
	private String fname;
	private int goodsid;
	public users() {
		super();
	}
	
	
	public users(int uid, String uname, String accunt, String passwd, String fname, int goodsid) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.accunt = accunt;
		this.passwd = passwd;
		this.fname = fname;
		this.goodsid = goodsid;
	}


	public users(String uname, String accunt, String passwd, String fname, int goodsid) {
		super();
		this.uname = uname;
		this.accunt = accunt;
		this.passwd = passwd;
		this.fname = fname;
		this.goodsid = goodsid;
	}


	public users(int uid, String uname, String accunt, String passwd) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.accunt = accunt;
		this.passwd = passwd;
	}


	public users(String uname, String accunt, String passwd) {
		super();
		this.uname = uname;
		this.accunt = accunt;
		this.passwd = passwd;
		
	}
	public users(int uid, String uname, String accunt, String passwd, int goodsid) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.accunt = accunt;
		this.passwd = passwd;
		this.goodsid = goodsid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getAccunt() {
		return accunt;
	}
	public void setAccunt(String accunt) {
		this.accunt = accunt;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}

	
	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	@Override
	public String toString() {
		return "users [uid=" + uid + ", uname=" + uname + ", accunt=" + accunt + ", passwd=" + passwd + ", goodsid=" + goodsid + "]";
	}
	
	
}
