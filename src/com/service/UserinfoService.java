package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.UserinfoMapper;
import com.vo.Userinfo;

 
@Service
public class UserinfoService {
	@Autowired
    private UserinfoMapper mapper;
 
	public List<Userinfo> findUserinfoList() throws Exception {
		// TODO Auto-generated method stub 
		List<Userinfo> list=mapper.findUserinfoList();
		System.out.println(list.size());
		return list;
	}

 
	public void insertUserinfo(Userinfo userinfo) throws Exception {
		// TODO Auto-generated method stub
       mapper.insertUserinfo(userinfo);
	}

 
	public void deletUserinfo(Integer id) throws Exception {
		// TODO Auto-generated method stub
     mapper.deleteUserinfo(id);
	}

 
	public void updateUserinfo(Userinfo userinfo) throws Exception {
		// TODO Auto-generated method stub
		mapper.updateUserinfo(userinfo);
	}

 
	public Userinfo findUserinfobyId(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return mapper.findUserinfoByid(id);
	}
	
	public List<Userinfo> findUserinfoByParam(Userinfo userinfo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.findUserinfoByParam(userinfo);
	}

}
