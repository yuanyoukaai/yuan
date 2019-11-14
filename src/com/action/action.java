package com.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.alibaba.fastjson.JSONObject;
import com.bean.goods;
import com.bean.pageBean;
import com.bean.specie;
import com.bean.twice;
import com.bean.users;
import com.biz.IUsedBiz;
@Controller
public class action implements IAction{
	@Resource(name="UsedBiz")
	private IUsedBiz iub;
	
	public action() {
		super();
	}
	
	public action(IUsedBiz iub) {
		super();
		this.iub = iub;
	}
	public IUsedBiz getIub() {
		return iub;
	}
	public void setIub(IUsedBiz iub) {
		this.iub = iub;
	}
	@RequestMapping(value="save_Student.do")
	public String save(HttpServletRequest request, HttpServletResponse response, users us) {
		iub.save(us);
		return "redirect:login.jsp";
	}
	@RequestMapping(value="findUsers.do")
	public String findUsers(HttpServletRequest request, HttpServletResponse response, users us) {
		HttpSession session= request.getSession();
		 users u=iub.findUsers(us);
		 if(u!=null){
			 	List<specie> slist=iub.findAllSpecies();
				session.setAttribute("slist", slist);
				List<String> li1=new ArrayList<String>();
				List<String> li2=new ArrayList<String>();
				List<String> li3=new ArrayList<String>();
				List<String> li4=new ArrayList<String>();
				List<specie> list=iub.findAllSpecies();
				for(specie sp:list){
					if(sp.getAsid()==1){
						li1.add(sp.getGspecie_name());
					}
					if(sp.getAsid()==2){
						li2.add(sp.getGspecie_name());
					}
					if(sp.getAsid()==3){
						li3.add(sp.getGspecie_name());
					}
					if(sp.getAsid()==4){
						li4.add(sp.getGspecie_name());
					}
				}
				session.setAttribute("li1", li1);
				session.setAttribute("li2", li2);
				session.setAttribute("li3", li3);
				session.setAttribute("li4", li4);
			session.setAttribute("uid", u.getUid());
			session.setAttribute("uname", u.getUname());
			return "redirect:shows.jsp";
		}else{
			session.setAttribute("findusers", true);
			return "redirect:login.jsp";
		} 
	}
	@RequestMapping(value="saveGoods.do")
	public String saveGoods(HttpServletRequest request, HttpServletResponse response, goods gs) {
		//获取根路径
		String realpath=request.getRealPath("/");
		//获取上传照片的对象
		MultipartFile mf=gs.getPic();
		if(mf!=null&&!mf.isEmpty()) {
			String oldPic=mf.getOriginalFilename();
			//修改图片名
			if(oldPic.lastIndexOf(".")>0) {
				String ext=oldPic.substring(oldPic.lastIndexOf(".")) ;
				if(ext.equalsIgnoreCase(".jpg")) {
					String newname=new Date().getTime()+ext;
					//创建文件对象，指定文件上传路径
					File file=new File(realpath+"/uppic/"+newname);
					//图片上传
					try {
						FileUtils.copyInputStreamToFile(mf.getInputStream(), file);
					} catch (IOException e) {
						e.printStackTrace();
					}
					gs.setPicname(newname);
				}
			}
		}
		boolean b=iub.saveGoods(gs);
		if(b) {
			return "redirect:shows.jsp";
		}
		return "redirect:error.jsp";
	}
	@RequestMapping(value="findSpecieGoods.do")
	public String findSpecieGoods(HttpServletRequest request, HttpServletResponse response, String sname) {
		HttpSession session= request.getSession();
		List<goods> goodlist=iub.findSpecieGoods(sname);
		session.setAttribute("goodlist", goodlist);
		return "redirect:goodlist.jsp";
	}
	@RequestMapping(value="findMyGoods.do")
	public String findMyGoods(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session= request.getSession();
		int uid=(int) session.getAttribute("uid");
		List<goods> mygood=iub.findMyGoods(uid);
		if(mygood!=null) {
			//分页
			List<goods> pageGood = new ArrayList<goods>();
			pageBean pb=(pageBean)session.getAttribute("pb");
			pb=pb==null?new pageBean():pb;
			//获取前台页面的zhi
			String page=request.getParameter("page");
			String rows=request.getParameter("rows");
			page=page==null?""+pb.getPage():page;
			rows=rows==null?""+pb.getRows():rows;
				
			int ipage=Integer.parseInt(page);
			int irows=Integer.parseInt(rows);
			//判断
			if(ipage<1)ipage=1;
			if(irows<1)irows=1;
			//获取最大页数
			int maxrows=mygood.size();//总记录数
			System.out.println("max"+maxrows);
			int maxpage;
			if(maxrows==0){
				maxpage=1;
			}else{
				maxpage=maxrows%irows==0?maxrows/irows:maxrows/irows+1;
			}
			System.out.println("maxpage"+maxpage);
			if(ipage>maxpage)ipage=maxpage;
			//获取每页集合
			
			System.out.println("pageGoods.size()"+mygood.size());
			if(maxrows<=irows) {
				pb.setGoodslis(mygood);
			}else {
				int a=ipage*irows;
				a=a<maxrows?a:maxrows;
				
				int b=(ipage-1)*irows;
				for(int i=b;i<a;i++) {
					System.out.println("i"+i);
					goods g=mygood.get(i);
					pageGood.add(g);
				}
				pb.setGoodslis(pageGood);
			}
			
			pb.setPage(ipage);
			pb.setRows(irows);
			pb.setAllpage(maxpage);
			session.setAttribute("pb", pb);
			return "redirect:mygood.jsp";
		}
		return "redirect:error.jsp";
	}
	@RequestMapping(value="deleteGood.do")
	public String deleteGood(HttpServletRequest request, HttpServletResponse response, int gid) {
		if(iub.deleteGood(gid)){
			return "redirect:ok.jsp";
		}
		return "redirect:error.jsp";
	}
	@RequestMapping(value="findsome.do")
	public String findsome(HttpServletRequest request, HttpServletResponse response, String find) {
		HttpSession session= request.getSession();
		List<goods> fgood=iub.findsome(find);
		session.setAttribute("fgood", fgood);
		return "redirect:goodlist2.jsp";
		
	}
	@RequestMapping(value="saveSp.do")
	public String saveSp(HttpServletRequest request, HttpServletResponse response, specie sp) {
		HttpSession session= request.getSession();
		boolean b=iub.saveSp(sp);
		if(b){
			List<specie> slist=iub.findAllSpecies();
			session.setAttribute("slist", slist);
			List<String> li1=new ArrayList<String>();
			List<String> li2=new ArrayList<String>();
			List<String> li3=new ArrayList<String>();
			List<String> li4=new ArrayList<String>();
			List<specie> list=iub.findAllSpecies();
			for(specie s:list){
				if(s.getAsid()==1){
					li1.add(s.getGspecie_name());
				}
				if(s.getAsid()==2){
					li2.add(s.getGspecie_name());
				}
				if(s.getAsid()==3){
					li3.add(s.getGspecie_name());
				}
				if(s.getAsid()==4){
					li4.add(s.getGspecie_name());
				}
			}
			session.setAttribute("li1", li1);
			session.setAttribute("li2", li2);
			session.setAttribute("li3", li3);
			session.setAttribute("li4", li4);
			return "redirect:shows.jsp";
		}
		return "redirect:error.jsp";
	}

	@RequestMapping(value="findByid.do")
	public String findByid(HttpServletRequest request, HttpServletResponse response, int gid) {
		HttpSession session= request.getSession();
		goods g=iub.findByid(gid);
		session.setAttribute("goo", g);
		return "redirect:buy.jsp";
	}

	@RequestMapping(value="changeSpe.do")
	public void changeSpe(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		HttpSession session= request.getSession();
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//判断是否砍过
		int uid=(int) session.getAttribute("uid");
		String g=request.getParameter("gid");
		int gid=Integer.parseInt(g);
		twice t=new twice(uid, gid);
		String p=request.getParameter("p");
		String fP=request.getParameter("fP");
		String pp=request.getParameter("pp");
		String ps=p.trim();
		int a=Integer.parseInt(ps);
		float b=Float.parseFloat(fP);
		float c=Float.parseFloat(pp);
		
		if(iub.findState(t)) {
			String st1="对不起，您已经砍过一次了";
			System.out.println(st1);
			String st2=pp+"";
			List<String> newpara=new ArrayList<String>();
			newpara.add(st1);
			newpara.add(st2);
			String jstr=JSONObject.toJSONString(newpara);
			out.print(jstr);
			out.flush();
			out.close();
			return;
		}
		twice tt=new twice(uid, gid,true);
		iub.saveState(tt);
			float m=b-a;
			if(m>0) {
				String st1="恭喜您砍价成功";
				System.out.println(st1);
				float newp=c-a;
				String st2=newp+"";
				List<String> newpara=new ArrayList<String>();
				newpara.add(st1);
				newpara.add(st2);
				String jstr=JSONObject.toJSONString(newpara);
				System.out.println(jstr);
				out.print(jstr);
				out.flush();
				out.close();
				return;
			}
			String st1="臣妾做不到啊";
			System.out.println(st1);
			String st2=c+"";
			List<String> newpara=new ArrayList<String>();
			newpara.add(st1);
			newpara.add(st2);
			String jstr=JSONObject.toJSONString(newpara);
			out.print(jstr);
			out.flush();
			out.close();
			return;
	}

	@RequestMapping(value="guodu.do")
	public String guodu(HttpServletRequest request, HttpServletResponse response,int gid) {
		HttpSession session= request.getSession();
		goods g=iub.findByid(gid);
		session.setAttribute("buyOne", g);
		return "redirect:my.jsp";
	}
	
}
