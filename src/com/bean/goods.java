package com.bean;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class goods implements Serializable{
	private int gid;
	private String gname;
	private float gprice;
	private float gprice_float;
	private Date gbuy_time;
	private String gspecie_name;
	private int gspecies_id;
	private int goodsid;
	private String picname;
	
	//日期处理
	private String buyTime;
	
	public goods(int gid, String gname, float gprice, float gprice_float, Date gbuy_time, String gspecie_name,
			int gspecies_id, int goodsid, String picname, String buyTime) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecie_name = gspecie_name;
		this.gspecies_id = gspecies_id;
		this.goodsid = goodsid;
		this.picname = picname;
		this.buyTime = buyTime;
	}
	public String getBuyTime() {
		if(gbuy_time!=null) {
			buyTime=new SimpleDateFormat("yyyy-MM-dd").format(gbuy_time);
		}
		return buyTime;
	}
	public void setBuyTime(String buyTime) {
		if(buyTime!=null) {
			try {
				gbuy_time=new SimpleDateFormat("yyyy-MM-dd").parse(buyTime);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		this.buyTime = buyTime;
	}
	//图片处理
	private MultipartFile pic;
	
	public goods(int gid, String gname, float gprice, float gprice_float, Date gbuy_time, String gspecie_name,
			int gspecies_id, int goodsid, String picname, MultipartFile pic) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecie_name = gspecie_name;
		this.gspecies_id = gspecies_id;
		this.goodsid = goodsid;
		this.picname = picname;
		this.pic = pic;
	}
	public goods(String gname, float gprice, float gprice_float, Date gbuy_time, String gspecie_name, int gspecies_id,
			int goodsid, String picname, MultipartFile pic) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecie_name = gspecie_name;
		this.gspecies_id = gspecies_id;
		this.goodsid = goodsid;
		this.picname = picname;
		this.pic = pic;
	}
	public MultipartFile getPic() {
		return pic;
	}
	public void setPic(MultipartFile pic) {
		this.pic = pic;
	}
	public String getGbuy_time() {
		return new SimpleDateFormat("yyyy-MM-dd").format(gbuy_time);
	}
	public void setGbuy_time(Date gbuy_time) {
		
		this.gbuy_time = gbuy_time;
	}
	public String getPicname() {
		return picname;
	}
	public void setPicname(String picname) {
		this.picname = picname;
	}
	
	
	public goods(int gid, String gname, float gprice, float gprice_float, Date gbuy_time, String gspecie_name,
			int gspecies_id, int goodsid, String picname) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecie_name = gspecie_name;
		this.gspecies_id = gspecies_id;
		this.goodsid = goodsid;
		this.picname = picname;
	}
	public goods(String gname, float gprice, float gprice_float, Date gbuy_time, String gspecie_name, int gspecies_id,
			int goodsid, String picname) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecie_name = gspecie_name;
		this.gspecies_id = gspecies_id;
		this.goodsid = goodsid;
		this.picname = picname;
	}
	public goods() {
		super();
	}
	public goods(int gid, String gname, float gprice, float gprice_float, Date gbuy_time, String gspecie_name,
			int gspecies_id, int goodsid) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecie_name = gspecie_name;
		this.gspecies_id = gspecies_id;
		this.goodsid = goodsid;
	}
	public goods(String gname, float gprice, float gprice_float, Date gbuy_time, int gspecies_id) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecies_id = gspecies_id;
	}
	public goods(String gname, float gprice, float gprice_float, Date gbuy_time) {
		super();
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
	}
	public goods(int gid, String gname, float gprice, float gprice_float, Date gbuy_time, int gspecies_id,
			int goodsid) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.gprice = gprice;
		this.gprice_float = gprice_float;
		this.gbuy_time = gbuy_time;
		this.gspecies_id = gspecies_id;
		this.goodsid = goodsid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public float getGprice() {
		return gprice;
	}
	public void setGprice(float gprice) {
		this.gprice = gprice;
	}
	public float getGprice_float() {
		return gprice_float;
	}
	public void setGprice_float(float gprice_float) {
		this.gprice_float = gprice_float;
	}
	public int getGspecies_id() {
		return gspecies_id;
	}
	public void setGspecies_id(int gspecies_id) {
		this.gspecies_id = gspecies_id;
	}
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getGspecie_name() {
		return gspecie_name;
	}
	public void setGspecie_name(String gspecie_name) {
		this.gspecie_name = gspecie_name;
	}
	@Override
	public String toString() {
		return "goods [gid=" + gid + ", gname=" + gname + ", gprice=" + gprice + ", gprice_float=" + gprice_float
				+ ", gbuy_time=" + gbuy_time + ", gspecie_name=" + gspecie_name + ", gspecies_id=" + gspecies_id
				+ ", goodsid=" + goodsid + "]";
	}
	
}
