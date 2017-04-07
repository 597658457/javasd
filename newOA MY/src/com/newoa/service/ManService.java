package com.newoa.service;

import java.util.List;

import com.newoa.pojo.TaskBase;

public interface ManService {
	public TaskBase addTask( TaskBase tb );
	public void upMoney(String id);
	public void done( String id);
	public void delay( String id);
	public void deleteTask( String userid);
	public List<TaskBase> find(TaskBase tb);
}
