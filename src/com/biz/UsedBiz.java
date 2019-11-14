package com.biz;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.goods;
import com.bean.specie;
import com.bean.twice;
import com.bean.users;
import com.mapper.IUsedDao;
@Service("UsedBiz")
@Transactional
public class UsedBiz implements IUsedBiz{
	@Resource(name="IUsedDao")
	private IUsedDao iud;
	
	public IUsedDao getIud() {
		return iud;
	}
	public void setIud(IUsedDao iud) {
		this.iud = iud;
	}
	public UsedBiz(IUsedDao iud) {
		super();
		this.iud = iud;
	}

	public UsedBiz() {
		super();
	}
	public boolean save(users us) {
		
		int a=iud.save(us);
		
		if(a>0) {
			return true;
		}
		return false;
	}
	@Override
	public users findUsers(users us) {
		List<users> list=iud.findUsers();
		for(users u:list) {
			if(us.getAccunt().equalsIgnoreCase(u.getAccunt()) && us.getPasswd().equals(u.getPasswd())) {
				return u;
			}
		}
		return null;
	}
	@Override
	public List<specie> findAllSpecies() {
		System.out.println("iiiiiiiiiiiii");
		List<specie> list=iud.findAllSpeciess();
		return list;
	}
	@Override
	public boolean saveGoods(goods gs) {
		System.out.println("gs............."+gs);
		int a=iud.saveGoods(gs);
	
		if(a>0) {
			return true;
		}
		return false;
	}
	@Override
	public List<goods> findSpecieGoods(String gname) {
		List<goods> li=iud.findSpecieGoods(gname);
		
		return li;
	}
	@Override
	public List<goods> findMyGoods(int uid) {
		List<goods> li=iud.findMyGoods(uid);
		if(li.size()>0) {
			return li;
		}
		return null;
	}
	@Override
	public boolean deleteGood(int gid) {
		int a=iud.deleteGood(gid);
	
		if(a>0) {
			return true;
		}
		return false;
	}
	public List<goods> findsome(String fname) {
		System.out.println("dddddddddddddddddd"+fname);
		List<goods> li=iud.findsome(fname);
		System.out.println("lllllllllll"+li);
		return li;
	}
	@Override
	public boolean saveSp(specie sp) {
		int a=iud.saveSp(sp);
	
		if(a!=0){
			return true;
		}
		return false;
	}
	@Override
	public goods findByid(int gid) {
		goods gs=iud.findByid(gid);
		if(gs!=null) {
			return gs;
		}
		return null;
	}
	@Override
	public boolean findState(twice t) {
		twice tw=null;
		tw=iud.findState(t);
		if(tw!=null) {
			return true;
		}
	  //	System.out.println(t.getTuid()+".........."+t.getTgid());
		/*
		 * try { twice tw=iud.findState(t);
		 * System.out.println("tw......"+tw.toString()); } catch (Exception e) {
		 * System.out.println("chuli"); return false; }
		 */
		return false;	
	}
	@Override
	public boolean saveState(twice t) {
		int a=iud.saveState(t);
		if(a>0) {
			return true;
		}
		return true;
	}
	
}
