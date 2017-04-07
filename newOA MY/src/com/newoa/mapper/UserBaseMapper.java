package com.newoa.mapper;

import java.util.List;


import com.newoa.pojo.UserBase;

public interface UserBaseMapper {
	public UserBase login(UserBase ub);	
	public List<UserBase> findAll();	
	public void addUser(UserBase ub);	
	public void updateUser(UserBase ub);
	public void deleteUser(String userid);
	public UserBase getuser(String id);
}