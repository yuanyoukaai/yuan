package com.mapper;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bean.goods;
import com.bean.specie;
import com.bean.twice;
import com.bean.users;
@Service("IUsedDao")
public interface IUsedDao {
	public int save(users us);
	public List<users> findUsers();
	public List<specie> findAllSpeciess();
	public int saveGoods(goods gs);
	public List<goods> findSpecieGoods(String gname);
	public List<goods> findMyGoods(int uid);
	public int deleteGood(int gid);
	public List<goods> findsome(String fname);
	public int findAllPage(int rows);
	public int saveSp(specie sp);
	public goods findByid(int gid);
	public twice findState(twice t);
	public int saveState(twice t);
}
