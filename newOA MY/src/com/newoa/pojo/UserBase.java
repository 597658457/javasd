package com.newoa.pojo;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component("ub")
public class UserBase {
	private String id;
	private String name;
	private String pwd;
	private String sex;
	private String jobdate;
	private String departmentid;
	private String roleid;
	private Department department;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getJobdate() {
		return jobdate;
	}
	public void setJobdate(String jobdate) {
		this.jobdate = jobdate;
	}
	public String getDepartmentid() {
		return departmentid;
	}
	public void setDepartmentid(String departmentid) {
		this.departmentid = departmentid;
	}
	public String getRoleid() {
		return roleid;
	}
	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}

	
	
}
