package com.mapper;	
	
import java.util.List;	
	
import com.vo.News;	
	
//Mapp操作	
public interface NewsMapper {	
	//查询	
	public List<News> findNewsList();	
	//删除	
	public void deleteNews(Integer id);	
	//添加	
	public void insertNews(News news);	
	//更新	
	public void updateNews(News news);	
	//根据ID查询	
	public News findNewsByid(Integer id);	
	//根据条件查询	
	public List<News> findNewsByParam(News news);	
}	
