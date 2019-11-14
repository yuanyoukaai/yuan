package com.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bean.goods;
import com.bean.specie;
import com.bean.twice;
import com.bean.users;
@Service("IUsedBiz")
public interface IUsedBiz {
	public boolean save(users us);
	public users findUsers(users us);
	public List<specie> findAllSpecies();
	public boolean saveGoods(goods gs);
	public List<goods> findSpecieGoods(String gname);
	public List<goods> findMyGoods(int uid);
	public boolean deleteGood(int gid);
	public List<goods> findsome(String fname);
	public boolean saveSp(specie sp );
	public goods findByid(int gid);
	public boolean findState(twice t);
	public boolean saveState(twice t);
}
