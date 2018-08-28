package com.service;	
	
import java.util.List;	
	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Service;	
	
import com.mapper.GangweiMapper;	
import com.vo.Gangwei;	
	
 	
@Service	
public class GangweiService {	
	@Autowired	
    private GangweiMapper mapper;	
 	
	public List<Gangwei> findGangweiList() throws Exception {	
		// TODO Auto-generated method stub 	
		List<Gangwei> list=mapper.findGangweiList();	
		System.out.println(list.size());	
		return list;	
	}	
	
 	
	public void insertGangwei(Gangwei gangwei) throws Exception {	
		// TODO Auto-generated method stub	
       mapper.insertGangwei(gangwei);	
	}	
	
 	
	public void deletGangwei(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
     mapper.deleteGangwei(id);	
	}	
	
 	
	public void updateGangwei(Gangwei gangwei) throws Exception {	
		// TODO Auto-generated method stub	
		mapper.updateGangwei(gangwei);	
	}	
	
 	
	public Gangwei findGangweibyId(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findGangweiByid(id);	
	}	
		
	public List<Gangwei> findGangweiByParam(Gangwei gangwei) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findGangweiByParam(gangwei);	
	}	
	
}	
