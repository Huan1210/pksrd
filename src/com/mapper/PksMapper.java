package com.mapper;	
	
import java.util.List;	
	
import com.vo.Pks;	
	
//Mapp操作	
public interface PksMapper {	
	//查询	
	public List<Pks> findPksList();	
	//删除	
	public void deletePks(Integer id);	
	//添加	
	public void insertPks(Pks pks);	
	//更新	
	public void updatePks(Pks pks);	
	//根据ID查询	
	public Pks findPksByid(Integer id);	
	//根据条件查询	
	public List<Pks> findPksByParam(Pks pks);	
}	
