package com.action;	
	
import java.util.List;	
import javax.servlet.http.HttpServletRequest;	
import org.junit.runners.Parameterized.Parameters;	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Controller;	
import org.springframework.web.bind.annotation.RequestMapping;	
import org.springframework.web.bind.annotation.RequestParam;	
import com.service.MessageService;	
import com.vo.Message;	
	
 	
@Controller	
@RequestMapping("/message")	
public class MessageController {	
	
	@Autowired	
	private MessageService messageService;	
		
	//查询	
	@RequestMapping(value="/list")	
	public String list(Message message,HttpServletRequest request) throws Exception{	
			
		List<Message> list=messageService.findMessageByParam(message);	
		request.setAttribute("list", list);	
		return  "/admin/message/list.jsp";	
	}	
		
	//添加	
	@RequestMapping(value="/add")	
	public String add(Message message,HttpServletRequest request) throws Exception{	
		message.setAdate(new java.util.Date().toLocaleString());
		messageService.insertMessage(message);	
		request.setAttribute("messageInfo", "留言成功!");
		return  "/login.jsp";
	}	
		
	//进入编辑	
	@RequestMapping(value="/toupdate")	
	public String toupdate(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Message message=messageService.findMessagebyId(Integer.parseInt(id));	
		request.setAttribute("message", message);	
		return  "/admin/message/update.jsp";	
	}	
		
	//更新	
	@RequestMapping(value="/update")	
	public String update(Message message,HttpServletRequest request) throws Exception{	
		messageService.updateMessage(message);	
		return  this.list(new Message(),request);	
	}	
		
	//删除	
	@RequestMapping(value="/del")	
	public String del(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		messageService.deletMessage(Integer.parseInt(id));	
		return  this.list(new Message(),request);	
	}	
		
	//查看	
	@RequestMapping(value="/view")	
	public String view(HttpServletRequest request) throws Exception{	
		String id=request.getParameter("id");	
		Message message=messageService.findMessagebyId(Integer.parseInt(id));	
		request.setAttribute("message", message);	
		return  "/admin/message/view.jsp";	
	}	
}	
