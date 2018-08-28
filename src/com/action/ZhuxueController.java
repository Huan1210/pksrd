package com.action;	
	
import java.util.List;	
import javax.servlet.http.HttpServletRequest;	
import org.junit.runners.Parameterized.Parameters;	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Controller;	
import org.springframework.web.bind.annotation.RequestMapping;	
import org.springframework.web.bind.annotation.RequestParam;	
import com.service.ZhuxueService;	
import com.vo.Zhuxue;	
	
 	
@Controller	
@RequestMapping("/zhuxue")	
public class ZhuxueController {	
	
	@Autowired	
	private ZhuxueService zhuxueService;	
		
	//查询	
	@RequestMapping(value="/list")	
	public String list(Zhuxue zhuxue,HttpServletRequest request) throws Exception{	
			
		List<Zhuxue> list=zhuxueService.findZhuxueByParam(zhuxue);	
		request.setAttribute("list", list);	
		return  "/admin/zhuxue/list.jsp";	
	}	
		
	//添加	
	@RequestMapping(value="/add")	
	public String add(Zhuxue zhuxue,HttpServletRequest request) throws Exception{	
		zhuxue.setAdate(new java.util.Date().toLocaleString());
		zhuxueService.insertZhuxue(zhuxue);	
		return  this.list(new Zhuxue(),request);	
	}	
		
	//进入编辑	
	@RequestMapping(value="/toupdate")	
	public String toupdate(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Zhuxue zhuxue=zhuxueService.findZhuxuebyId(Integer.parseInt(id));	
		request.setAttribute("zhuxue", zhuxue);	
		return  "/admin/zhuxue/update.jsp";	
	}	
		
	//更新	
	@RequestMapping(value="/update")	
	public String update(Zhuxue zhuxue,HttpServletRequest request) throws Exception{
		zhuxue.setAdate(new java.util.Date().toLocaleString());
		zhuxueService.updateZhuxue(zhuxue);	
		return  this.list(new Zhuxue(),request);	
	}	
		
	//删除	
	@RequestMapping(value="/del")	
	public String del(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		zhuxueService.deletZhuxue(Integer.parseInt(id));	
		return  this.list(new Zhuxue(),request);	
	}	
		
	//查看	
	@RequestMapping(value="/view")	
	public String view(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Zhuxue zhuxue=zhuxueService.findZhuxuebyId(Integer.parseInt(id));	
		request.setAttribute("zhuxue", zhuxue);	
		return  "/admin/zhuxue/view.jsp";	
	}	
}	
