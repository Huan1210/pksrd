package com.action;	
	
import java.util.List;	
import javax.servlet.http.HttpServletRequest;	
import org.junit.runners.Parameterized.Parameters;	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Controller;	
import org.springframework.web.bind.annotation.RequestMapping;	
import org.springframework.web.bind.annotation.RequestParam;	
import com.service.PksService;	
import com.vo.Pks;	
import com.vo.Userinfo;
	
 	
@Controller	
@RequestMapping("/pks")	
public class PksController {	
	
	@Autowired	
	private PksService pksService;	
		
	//查询	
	@RequestMapping(value="/list")	
	public String list(Pks pks,HttpServletRequest request) throws Exception{	
			
		List<Pks> list=pksService.findPksByParam(pks);	
		request.setAttribute("list", list);	
		return  "/admin/pks/list.jsp";	
	}	
	
	//查询	
	@RequestMapping(value="/pflist")	
	public String pflist(Pks pks,HttpServletRequest request) throws Exception{	
			
		List<Pks> list=pksService.findPksByParam(pks);	
		request.setAttribute("list", list);	
		return  "/admin/pks/pflist.jsp";	
	}
	
	//查询	
	@RequestMapping(value="/splist")	
	public String splist(Pks pks,HttpServletRequest request) throws Exception{	
			
		List<Pks> list=pksService.findPksByParam(pks);	
		request.setAttribute("list", list);	
		return  "/admin/pks/splist.jsp";	
	}
	
	//查询	
	@RequestMapping(value="/pjlist")	
	public String pjlist(Pks pks,HttpServletRequest request) throws Exception{	
			
		List<Pks> list=pksService.findPksByParam(pks);	
		request.setAttribute("list", list);	
		return  "/admin/pks/pjlist.jsp";	
	}
		
	//添加	
	@RequestMapping(value="/add")	
	public String add(Pks pks,HttpServletRequest request) throws Exception{	
		pks.setState("提交审批");
		pks.setAdate(new java.util.Date().toLocaleString());
		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");
		pks.setUserid(userinfo.getId());
		pksService.insertPks(pks);	
		return  this.list(new Pks(),request);	
	}	
	
	@RequestMapping(value="/mylist")	
	public String mylist(Pks pks,HttpServletRequest request) throws Exception{	
		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");
		pks.setUserid(userinfo.getId());
		List<Pks> list=pksService.findPksByParam(pks);	
		request.setAttribute("list", list);	
		return  "/admin/pks/mylist.jsp";	
	}
		
	//进入编辑	
	@RequestMapping(value="/toupdate")	
	public String toupdate(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Pks pks=pksService.findPksbyId(Integer.parseInt(id));	
		request.setAttribute("pks", pks);	
		return  "/admin/pks/update.jsp";	
	}	
		
	//更新	
	@RequestMapping(value="/update")	
	public String update(Pks pks,HttpServletRequest request) throws Exception{	
		pksService.updatePks(pks);	
		return  this.list(new Pks(),request);	
	}	
	
	
	//更新	
	@RequestMapping(value="/pingfen")	
	public String pingfen(Pks pks,HttpServletRequest request) throws Exception{	
		Pks pksinfo=pksService.findPksbyId(pks.getId());	
		pksinfo.setFen(pks.getFen());
		pksService.updatePks(pksinfo);	
		return  this.pflist(new Pks(),request);	
	}
	
	//审批
	@RequestMapping(value="/sp")	
	public String sp(Pks pks,HttpServletRequest request) throws Exception{	
		Pks pksinfo=pksService.findPksbyId(pks.getId());	
		pksinfo.setState(pks.getState());
		pksService.updatePks(pksinfo);	
		return  this.splist(new Pks(),request);	
	}
	
	//评级
	@RequestMapping(value="/pj")	
	public String pj(Pks pks,HttpServletRequest request) throws Exception{	
		Pks pksinfo=pksService.findPksbyId(pks.getId());	
		pksinfo.setGrade(pks.getGrade());
		pksService.updatePks(pksinfo);	
		return  this.pjlist(new Pks(),request);	
	}
		
	//删除	
	@RequestMapping(value="/del")	
	public String del(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		pksService.deletPks(Integer.parseInt(id));	
		return  this.list(new Pks(),request);	
	}	
		
	//查看	
	@RequestMapping(value="/view")	
	public String view(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Pks pks=pksService.findPksbyId(Integer.parseInt(id));	
		request.setAttribute("pks", pks);	
		return  "/admin/pks/view.jsp";	
	}	
}	
