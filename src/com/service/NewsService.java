package com.service;	
	
import java.util.List;	
	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Service;	
	
import com.mapper.NewsMapper;	
import com.vo.News;	
	
 	
@Service	
public class NewsService {	
	@Autowired	
    private NewsMapper mapper;	
 	
	public List<News> findNewsList() throws Exception {	
		// TODO Auto-generated method stub 	
		List<News> list=mapper.findNewsList();	
		System.out.println(list.size());	
		return list;	
	}	
	
 	
	public void insertNews(News news) throws Exception {	
		// TODO Auto-generated method stub	
       mapper.insertNews(news);	
	}	
	
 	
	public void deletNews(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
     mapper.deleteNews(id);	
	}	
	
 	
	public void updateNews(News news) throws Exception {	
		// TODO Auto-generated method stub	
		mapper.updateNews(news);	
	}	
	
 	
	public News findNewsbyId(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findNewsByid(id);	
	}	
		
	public List<News> findNewsByParam(News news) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findNewsByParam(news);	
	}	
	
}	
