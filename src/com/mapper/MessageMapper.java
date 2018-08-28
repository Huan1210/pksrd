package com.mapper;	
	
import java.util.List;	
	
import com.vo.Message;	
	
//Mapp操作	
public interface MessageMapper {	
	//查询	
	public List<Message> findMessageList();	
	//删除	
	public void deleteMessage(Integer id);	
	//添加	
	public void insertMessage(Message message);	
	//更新	
	public void updateMessage(Message message);	
	//根据ID查询	
	public Message findMessageByid(Integer id);	
	//根据条件查询	
	public List<Message> findMessageByParam(Message message);	
}	
