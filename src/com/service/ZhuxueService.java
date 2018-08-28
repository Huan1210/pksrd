package com.service;	
	
import java.util.List;	
	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Service;	
	
import com.mapper.ZhuxueMapper;	
import com.vo.Zhuxue;	
	
 	
@Service	
public class ZhuxueService {	
	@Autowired	
    private ZhuxueMapper mapper;	
 	
	public List<Zhuxue> findZhuxueList() throws Exception {	
		// TODO Auto-generated method stub 	
		List<Zhuxue> list=mapper.findZhuxueList();	
		System.out.println(list.size());	
		return list;	
	}	
	
 	
	public void insertZhuxue(Zhuxue zhuxue) throws Exception {	
		// TODO Auto-generated method stub	
       mapper.insertZhuxue(zhuxue);	
	}	
	
 	
	public void deletZhuxue(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
     mapper.deleteZhuxue(id);	
	}	
	
 	
	public void updateZhuxue(Zhuxue zhuxue) throws Exception {	
		// TODO Auto-generated method stub	
		mapper.updateZhuxue(zhuxue);	
	}	
	
 	
	public Zhuxue findZhuxuebyId(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findZhuxueByid(id);	
	}	
		
	public List<Zhuxue> findZhuxueByParam(Zhuxue zhuxue) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findZhuxueByParam(zhuxue);	
	}	
	
}	
