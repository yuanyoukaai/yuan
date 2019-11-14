package com.bean;

import java.io.Serializable;

public class specie implements Serializable{
	private int sid;
	private String gspecie_name;
	private int asid;
	private String as_name;
	
	public specie() {
		super();
	}
	public specie(int sid, String gspecie_name, int asid, String as_name) {
		super();
		this.sid = sid;
		this.gspecie_name = gspecie_name;
		this.asid = asid;
		this.as_name = as_name;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	
	public String getGspecie_name() {
		return gspecie_name;
	}
	public void setGspecie_name(String gspecie_name) {
		this.gspecie_name = gspecie_name;
	}
	public int getAsid() {
		return asid;
	}
	public void setAsid(int asid) {
		this.asid = asid;
	}
	
	public String getAs_name() {
		return as_name;
	}
	public void setAs_name(String as_name) {
		this.as_name = as_name;
	}
	@Override
	public String toString() {
		return "specie [sid=" + sid + ", sname=" + gspecie_name + ", asid=" + asid + ", as_name=" + as_name + "]";
	}
	
	
}
