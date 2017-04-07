package com.newoa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.newoa.mapper.ManMapper;
import com.newoa.pojo.TaskBase;
import com.newoa.service.ManService;
@Service
@Transactional
public class ManServiceImpl implements ManService{
	@Autowired
	public ManMapper mm;
	
	public ManMapper getMm() {
		return mm;
	}

	public void setMm(ManMapper mm) {
		this.mm = mm;
	}

	@Override
	public TaskBase addTask(TaskBase tb) {
		// TODO Auto-generated method stub
		return mm.addTask(tb);
	}

	@Override
	public void delay(String id) {
		// TODO Auto-generated method stub
		mm.delay(id);
	}

	@Override
	public void deleteTask(String userid) {
		// TODO Auto-generated method stub
		mm.deleteTask(userid);
		
	}

	@Override
	public void done(String id) {
		// TODO Auto-generated method stub
		mm.done(id);
	}

	@Override
	public List<TaskBase> find(TaskBase tb) {
		// TODO Auto-generated method stub
		return mm.find(tb);
	}

	@Override
	public void upMoney(String id) {
		// TODO Auto-generated method stub
		mm.upMoney(id);
	}


}
