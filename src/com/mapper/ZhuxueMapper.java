package com.mapper;	
	
import java.util.List;	
	
import com.vo.Zhuxue;	
	
//Mapp操作	
public interface ZhuxueMapper {	
	//查询	
	public List<Zhuxue> findZhuxueList();	
	//删除	
	public void deleteZhuxue(Integer id);	
	//添加	
	public void insertZhuxue(Zhuxue zhuxue);	
	//更新	
	public void updateZhuxue(Zhuxue zhuxue);	
	//根据ID查询	
	public Zhuxue findZhuxueByid(Integer id);	
	//根据条件查询	
	public List<Zhuxue> findZhuxueByParam(Zhuxue zhuxue);	
}	
