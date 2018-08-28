package com.action;

import java.util.List;








import javax.servlet.http.HttpServletRequest;

import org.junit.runners.Parameterized.Parameters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.UserinfoService;
import com.vo.Userinfo;

 
@Controller
@RequestMapping("/userinfo")
public class UserinfoController {

	@Autowired
	private UserinfoService userinfoService;
	
	//查询
	@RequestMapping(value="/list")
	public String list(Userinfo userinfo,HttpServletRequest request) throws Exception{
		
		List<Userinfo> list=userinfoService.findUserinfoByParam(userinfo);
		request.setAttribute("list", list);
		return  "/admin/userinfo/list.jsp";
	}
	
	//添加
	@RequestMapping(value="/add")
	public String add(Userinfo userinfo,HttpServletRequest request) throws Exception{
		userinfoService.insertUserinfo(userinfo);
		return  this.list(new Userinfo(),request);
	}
	
	//进入编辑
	@RequestMapping(value="/toupdate")
	public String toupdate(HttpServletRequest request) throws Exception{
		String id=request.getParameter("id");
		Userinfo userinfo=userinfoService.findUserinfobyId(Integer.parseInt(id));
		request.setAttribute("userinfo", userinfo);
		return  "/admin/userinfo/update.jsp";
	}
	
	//更新
	@RequestMapping(value="/update")
	public String update(Userinfo userinfo,HttpServletRequest request) throws Exception{
		userinfoService.updateUserinfo(userinfo);
		return  this.list(new Userinfo(),request);
	}
	
	//更新
	@RequestMapping(value="/updatemy")
	public String updatemy(Userinfo userinfo,HttpServletRequest request) throws Exception{
		userinfoService.updateUserinfo(userinfo);
		request.getSession().setAttribute("user", userinfo);
		request.setAttribute("messageInfo", "修改成功");
		return "/admin/userinfo/editmy.jsp";
	}
	
	//删除
	@RequestMapping(value="/del")
	public String del(HttpServletRequest request) throws Exception{
		String id=request.getParameter("id");
		userinfoService.deletUserinfo(Integer.parseInt(id));
		return  this.list(new Userinfo(),request);
	}
	
	//查看
	@RequestMapping(value="/view")
	public String view(HttpServletRequest request) throws Exception{
		String id=request.getParameter("id");
		Userinfo userinfo=userinfoService.findUserinfobyId(Integer.parseInt(id));
		request.setAttribute("userinfo", userinfo);
		return  "/admin/userinfo/view.jsp";
	}
}
