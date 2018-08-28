package com.mapper;

import java.util.List;

import com.vo.Userinfo;

//Mapp操作
public interface UserinfoMapper {
	//查询用户
	public List<Userinfo> findUserinfoList();
	//删除用户
	public void deleteUserinfo(Integer id);
	//添加用户
	public void insertUserinfo(Userinfo userinfo);
	//更新用户
	public void updateUserinfo(Userinfo userinfo);
	//根据ID查询用户
	public Userinfo findUserinfoByid(Integer id);
	//根据条件查询用户
	public List<Userinfo> findUserinfoByParam(Userinfo userinfo);
}
