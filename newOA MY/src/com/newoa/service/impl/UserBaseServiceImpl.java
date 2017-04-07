package com.newoa.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newoa.mapper.UserBaseMapper;
import com.newoa.pojo.UserBase;
import com.newoa.service.UserBaseService;
import com.newoa.util.MD5;

@Service
@Transactional
public class UserBaseServiceImpl implements UserBaseService{
@Autowired
public UserBaseMapper ubm;
@Override
	public void addUser(UserBase ub) {
		// TODO Auto-generated method stub
		ubm.addUser(ub);
	}

	@Override
	public void deleteUser(String userid) {
		// TODO Auto-generated method stub
		ubm.deleteUser(userid);
	}

	@Override
	public List<UserBase> findAll() {
		// TODO Auto-generated method stub		
		return ubm.findAll();
	}

	@Override
	public UserBase login(UserBase ub) {
		// TODO Auto-generated method stub
		//ub.setPwd(MD5.md5(ub.getPwd()));
		return ubm.login(ub);
	}

	@Override
	public void updateUser(UserBase ub) {
		// TODO Auto-generated method stub
		ubm.updateUser(ub);
	}
	@Override
	public UserBase getuser(String id) {
		// TODO Auto-generated method stub
		return ubm.getuser(id);
	}

	public UserBaseMapper getUbm() {
		return ubm;
	}

	public void setUbm(UserBaseMapper ubm) {
		this.ubm = ubm;
	}


  
   

}
