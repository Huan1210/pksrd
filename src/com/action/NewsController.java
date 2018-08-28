package com.action;	
	
import java.util.List;	
import javax.servlet.http.HttpServletRequest;	
import org.junit.runners.Parameterized.Parameters;	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Controller;	
import org.springframework.web.bind.annotation.RequestMapping;	
import org.springframework.web.bind.annotation.RequestParam;	
import com.service.NewsService;	
import com.vo.News;	
	
 	
@Controller	
@RequestMapping("/news")	
public class NewsController {	
	
	@Autowired	
	private NewsService newsService;	
		
	//查询	
	@RequestMapping(value="/list")	
	public String list(News news,HttpServletRequest request) throws Exception{	
			
		List<News> list=newsService.findNewsByParam(news);	
		request.setAttribute("list", list);	
		return  "/admin/news/list.jsp";	
	}	
		
	//添加	
	@RequestMapping(value="/add")	
	public String add(News news,HttpServletRequest request) throws Exception{	
		newsService.insertNews(news);	
		return  this.list(new News(),request);	
	}	
		
	//进入编辑	
	@RequestMapping(value="/toupdate")	
	public String toupdate(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		News news=newsService.findNewsbyId(Integer.parseInt(id));	
		request.setAttribute("news", news);	
		return  "/admin/news/update.jsp";	
	}	
		
	//更新	
	@RequestMapping(value="/update")	
	public String update(News news,HttpServletRequest request) throws Exception{	
		newsService.updateNews(news);	
		return  this.list(new News(),request);	
	}	
		
	//删除	
	@RequestMapping(value="/del")	
	public String del(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		newsService.deletNews(Integer.parseInt(id));	
		return  this.list(new News(),request);	
	}	
		
	//查看	
	@RequestMapping(value="/view")	
	public String view(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		News news=newsService.findNewsbyId(Integer.parseInt(id));	
		request.setAttribute("news", news);	
		return  "/admin/news/view.jsp";	
	}	
}	
