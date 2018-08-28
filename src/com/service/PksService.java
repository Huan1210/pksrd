package com.service;	
	
import java.util.List;	
	
import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Service;	
	
import com.mapper.PksMapper;	
import com.vo.Pks;	
	
 	
@Service	
public class PksService {	
	@Autowired	
    private PksMapper mapper;	
 	
	public List<Pks> findPksList() throws Exception {	
		// TODO Auto-generated method stub 	
		List<Pks> list=mapper.findPksList();	
		System.out.println(list.size());	
		return list;	
	}	
	
 	
	public void insertPks(Pks pks) throws Exception {	
		// TODO Auto-generated method stub	
       mapper.insertPks(pks);	
	}	
	
 	
	public void deletPks(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
     mapper.deletePks(id);	
	}	
	
 	
	public void updatePks(Pks pks) throws Exception {	
		// TODO Auto-generated method stub	
		mapper.updatePks(pks);	
	}	
	
 	
	public Pks findPksbyId(Integer id) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findPksByid(id);	
	}	
		
	public List<Pks> findPksByParam(Pks pks) throws Exception {	
		// TODO Auto-generated method stub	
		return mapper.findPksByParam(pks);	
	}	
	
}	
