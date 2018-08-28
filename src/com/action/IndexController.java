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
@RequestMapping("/index")
public class IndexController {

	@Autowired
	private UserinfoService userinfoService;
	
	  
    //用户登录
	@RequestMapping(value="/login")
	public String login(Userinfo userinfo,HttpServletRequest request) throws Exception{
		System.out.println(userinfo);
		List<Userinfo> list=userinfoService.findUserinfoByParam(userinfo);
		if(list.size()>0){
			request.getSession().setAttribute("user", list.get(0));
			return  "/admin/index.jsp";
		}else{
			request.setAttribute("messageInfo", "用户或密码有误!");
			return  "/login.jsp";
		}
		
	}
	
	//用户注销
	@RequestMapping(value="/loginout")
	public String login(HttpServletRequest request) throws Exception{ 
		request.getSession().invalidate();
		return  "/login.jsp";
		
		
	}
	
	//用户注册
	@RequestMapping(value="/reg")
	public String reg(Userinfo userinfo,HttpServletRequest request) throws Exception{ 
		userinfo.setUsertype("学生");
		userinfoService.insertUserinfo(userinfo);
		request.setAttribute("messageInfo", "用户注册成功!");
		return  "/login.jsp";
	}
}
