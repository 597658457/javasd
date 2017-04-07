package com.newoa.pojo;

import java.util.List;

/**
 * 结果返回
 * 		status = -1时,表示操作失败
 * 		status =  1时,表示操作成功
 * 		操作成功或失败的提示,都是msg.
 * 		如果操作成功,需要返回列表,可以存储在list中;
 * 		如果是单个对象,可以使用result
 * 
 * 好处:
 * 	ajax所有的对象返回,都可以使用resultBean
 * 	springmvc的项目中,也可以使用该对象来返回结果信息
 * 
 * @author Administrator
 *
 */
public class ResultBean {

	public ResultBean()
	{
		status = 1;
		msg = "操作成功!";
	}
	private Integer status;
	private String msg;
	private List list;
	private Object result;
	
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
}
