package com.action;	
	
import java.util.List;	
import javax.servlet.http.HttpServletRequest;	
import org.junit.runners.Parameterized.Parameters;	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Controller;	
import org.springframework.web.bind.annotation.RequestMapping;	
import org.springframework.web.bind.annotation.RequestParam;	
import com.service.GangweiService;	
import com.service.ZhuxueService;
import com.vo.Gangwei;	
import com.vo.Userinfo;
import com.vo.Zhuxue;
	
 	
@Controller	
@RequestMapping("/gangwei")	
public class GangweiController {	
	
	@Autowired	
	private GangweiService gangweiService;	
	
	@Autowired	
	private ZhuxueService zhuxueService;
		
	//查询	
	@RequestMapping(value="/list")	
	public String list(Gangwei gangwei,HttpServletRequest request) throws Exception{	
			
		List<Gangwei> list=gangweiService.findGangweiByParam(gangwei);	
		request.setAttribute("list", list);	
		return  "/admin/gangwei/list.jsp";	
	}	
	
	
	//查询	
	@RequestMapping(value="/listmy")	
	public String listmy(Gangwei gangwei,HttpServletRequest request) throws Exception{	
			
		
		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");
		gangwei.setSname(userinfo.getRname());
		List<Gangwei> list=gangweiService.findGangweiByParam(gangwei);
		request.setAttribute("list", list);	
		return  "/admin/gangwei/listmy.jsp";	
	}	
		
	//添加	
	@RequestMapping(value="/add")	
	public String add(int zid,HttpServletRequest request) throws Exception{	
		System.out.println("zid: "+zid);
		Zhuxue zs=zhuxueService.findZhuxuebyId(zid);
		Gangwei gangwei=new Gangwei();
		gangwei.setAdate(new java.util.Date().toLocaleString());
		gangwei.setZid(zid);
		gangwei.setName(zs.getName());
		gangwei.setStates("提交申请");
		
		Userinfo userinfo=(Userinfo) request.getSession().getAttribute("user");
		gangwei.setSname(userinfo.getRname());
		
		gangweiService.insertGangwei(gangwei);	
		return  this.listmy(new Gangwei(),request);	
	}	
	
	@RequestMapping(value="/sp")	
	public String sp(int id,String res,HttpServletRequest request) throws Exception{	
		Gangwei gangwei=gangweiService.findGangweibyId(id);
		if(res.equals("ty")){
			gangwei.setStates("申请通过");
		}else{
			gangwei.setStates("不同意");
		}
		gangweiService.updateGangwei(gangwei);
		return  this.list(new Gangwei(),request);	 
	}
		
	//进入编辑	
	@RequestMapping(value="/toupdate")	
	public String toupdate(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Gangwei gangwei=gangweiService.findGangweibyId(Integer.parseInt(id));	
		request.setAttribute("gangwei", gangwei);	
		return  "/admin/gangwei/update.jsp";	
	}	
		
	//更新	
	@RequestMapping(value="/update")	
	public String update(Gangwei gangwei,HttpServletRequest request) throws Exception{	
		gangweiService.updateGangwei(gangwei);	
		return  this.list(new Gangwei(),request);	
	}	
		
	//删除	
	@RequestMapping(value="/del")	
	public String del(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		gangweiService.deletGangwei(Integer.parseInt(id));	
		return  this.list(new Gangwei(),request);	
	}	
		
	//查看	
	@RequestMapping(value="/view")	
	public String view(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Gangwei gangwei=gangweiService.findGangweibyId(Integer.parseInt(id));	
		request.setAttribute("gangwei", gangwei);	
		return  "/admin/gangwei/view.jsp";	
	}	
	
	
}	
