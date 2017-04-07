package com.newoa.pojo;

public class Holiday {
	private String id;
	private String desc;
	private String statusid;
	private String starttime;
	private String endtime;
	private String userid;
	private Status status;
	private UserBase userbase;
	private String Departmentid;
	public String getDepartmentid() {
		return Departmentid;
	}
	public void setDepartmentid(String departmentid) {
		Departmentid = departmentid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getStatusid() {
		return statusid;
	}
	public void setStatusid(String statusid) {
		this.statusid = statusid;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public UserBase getUserbase() {
		return userbase;
	}
	public void setUserbase(UserBase userbase) {
		this.userbase = userbase;
	}
	
	
}
