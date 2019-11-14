package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.bean.goods;
import com.bean.specie;
import com.bean.users;
@Service("IAction")
public interface IAction {
	public String save(HttpServletRequest request,HttpServletResponse response, users us);
	public String findUsers(HttpServletRequest request,HttpServletResponse response,users us);
	public String saveGoods(HttpServletRequest request,HttpServletResponse response,goods gs);
	public String findSpecieGoods(HttpServletRequest request,HttpServletResponse response,String gname);
	public String findMyGoods(HttpServletRequest request,HttpServletResponse response);
	public String deleteGood(HttpServletRequest request,HttpServletResponse response,int gid);
	public String findsome(HttpServletRequest request,HttpServletResponse response,String fname);
	public String saveSp(HttpServletRequest request,HttpServletResponse response,specie sp );
	public String findByid(HttpServletRequest request,HttpServletResponse response,int gid);
	public void changeSpe(HttpServletRequest request,HttpServletResponse response);
	public String guodu(HttpServletRequest request,HttpServletResponse response,int gid);
}
