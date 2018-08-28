package com.service;	
	
import java.util.List;	
	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Service;	
	
import com.mapper.MessageMapper;	
import com.vo.Message;	
	
 	
@Service	
public class MessageService {	
	@Autowired	
    private MessageMapper mapper;	
 	
	public List<Message> findMessageList() throws Exception {	
		// TODO Auto-generated method stub 	
		List<Message> list=mapper.findMessageList();	
		System.out.println(list.size());	
		return list;	
	}	
	
 	
	public void insertMessage(Message message) throws Exception {	
		// TODO Auto-generated method stub	
       mapper.insertMessage(message);	
	}	
	
 	
	public void deletMessage(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
     mapper.deleteMessage(id);	
	}	
	
 	
	public void updateMessage(Message message) throws Exception {	
		// TODO Auto-generated method stub	
		mapper.updateMessage(message);	
	}	
	
 	
	public Message findMessagebyId(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findMessageByid(id);	
	}	
		
	public List<Message> findMessageByParam(Message message) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findMessageByParam(message);	
	}	
	
}	
