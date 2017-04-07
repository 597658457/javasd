package com.newoa.mapper;

import java.util.List;
import java.util.Map;

import com.newoa.pojo.Holiday;
import com.newoa.pojo.TaskBase;
import com.newoa.pojo.UserBase;
import com.newoa.pojo.TaskBase ;
public interface ManMapper {
	
	public TaskBase addTask( TaskBase tb );
	public void upMoney(String id);
	public void done( String id);
	public void delay( String id);
	public void deleteTask( String userid);
	public List<TaskBase> find(TaskBase tb);
}
