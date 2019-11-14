package com.bean;

import java.io.Serializable;
import java.util.List;

public class pageBean implements Serializable{
	private int page=1;//当前页
	private int rows=5;//每页记录数
	private int allpage;//总页数
	private List<?> goodslis;//返回的集合
	
	
	public pageBean() {
		super();
	}
	public pageBean(int page, int rows, int allpage, List<?> goodslis) {
		super();
		this.page = page;
		this.rows = rows;
		this.allpage = allpage;
		this.goodslis = goodslis;
	}
	public pageBean(int page, int rows, int allpage) {
		super();
		this.page = page;
		this.rows = rows;
		this.allpage = allpage;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getAllpage() {
		return allpage;
	}
	public void setAllpage(int allpage) {
		this.allpage = allpage;
	}
	public List<?> getGoodslis() {
		return goodslis;
	}
	public void setGoodslis(List<?> goodslis) {
		this.goodslis = goodslis;
	}
	@Override
	public String toString() {
		return "pageBean [page=" + page + ", rows=" + rows + ", allpage=" + allpage + ", goodslis=" + goodslis + "]";
	}
	
}
