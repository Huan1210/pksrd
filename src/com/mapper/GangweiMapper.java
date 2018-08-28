package com.mapper;	
	
import java.util.List;	
	
import com.vo.Gangwei;	
	
//Mapp操作	
public interface GangweiMapper {	
	//查询	
	public List<Gangwei> findGangweiList();	
	//删除	
	public void deleteGangwei(Integer id);	
	//添加	
	public void insertGangwei(Gangwei gangwei);	
	//更新	
	public void updateGangwei(Gangwei gangwei);	
	//根据ID查询	
	public Gangwei findGangweiByid(Integer id);	
	//根据条件查询	
	public List<Gangwei> findGangweiByParam(Gangwei gangwei);	
}	
