package com.newoa.service;

import java.util.List;

import com.newoa.pojo.UserBase;

public interface UserBaseService {
	public UserBase login(UserBase ub);	
	public List<UserBase> findAll();	
	public void addUser(UserBase ub);	
	public void deleteUser(String userid);
	public void updateUser(UserBase ub);
	public UserBase getuser(String id);
}
