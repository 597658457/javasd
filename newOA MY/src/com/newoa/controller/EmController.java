package com.newoa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newoa.mapper.HolidayMapper;
import com.newoa.pojo.Holiday;
import com.newoa.pojo.TaskBase;
import com.newoa.pojo.UserBase;
import com.newoa.service.HolidayService;
import com.newoa.service.ManService;
@Controller
@RequestMapping("em")
public class EmController {
	@Autowired
	public ManService ms;
	@Autowired
	public HolidayService hs;
	//所有任务页面
	@RequestMapping("/alltask.do")
	public ModelAndView allTask(TaskBase tb, HttpServletRequest request)
	{
		UserBase user = (UserBase) request.getSession().getAttribute("userbase");
		String userid = user.getId();
		String departmentid = user.getDepartmentid();
		tb.setUserid(userid);
		tb.setDepartmentid(departmentid);
		List<TaskBase> tblist =ms.find(tb);
		request.setAttribute( "tblist", tblist );
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "em_tasklist" );
		return mav;
	}
	//开发中任务页面
	@RequestMapping("/ing.do")
	public ModelAndView ing(TaskBase tb, HttpServletRequest request)
	{
		UserBase user = (UserBase) request.getSession().getAttribute("userbase");
		String userid = user.getId();
		String departmentid = user.getDepartmentid();
		tb.setUserid(userid);
		tb.setDepartmentid(departmentid);
		tb.setStatusid("1");
		List<TaskBase> tblist =  ms.find(tb);
		request.setAttribute( "tblist", tblist );		
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "em_tasklist" );
		return mav;
	}
	
	//已完成任务页面
	@RequestMapping("/ed.do")
	public ModelAndView ed(TaskBase tb, HttpServletRequest request)
	{
		UserBase user = (UserBase) request.getSession().getAttribute("userbase");
		String userid = user.getId();
		String departmentid = user.getDepartmentid();
		tb.setUserid(userid);
		tb.setDepartmentid(departmentid);
		tb.setStatusid("2");
		List<TaskBase> tblist =  ms.find(tb);
		request.setAttribute( "tblist", tblist );		
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "em_tasklist" );
		return mav;
	}
	//已延迟任务的页面
	@RequestMapping("/de.do")
	public ModelAndView de(TaskBase tb, HttpServletRequest request)
	{
		UserBase user = (UserBase) request.getSession().getAttribute("userbase");
		String userid = user.getId();
		String departmentid = user.getDepartmentid();
		tb.setUserid(userid);
		tb.setDepartmentid(departmentid);
		tb.setStatusid("0");
		List<TaskBase> tblist =  ms.find(tb);
		request.setAttribute( "tblist", tblist );		
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "em_tasklist" );
		return mav;
	}
	//申请假期的页面
	@RequestMapping("/applyholiday.do")
	public ModelAndView applyholiday(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "em_applyholiday" );
		return mav;
	}
	//我的假期页面
	@RequestMapping("/myholiday.do")
	public ModelAndView myHoliday(Holiday ho, HttpServletRequest request)
	{
		UserBase user = (UserBase) request.getSession().getAttribute("userbase");
		String userid = user.getId();
		String departmentid = user.getDepartmentid();
		ho.setUserid(userid);
		ho.setDepartmentid(departmentid);
		List<Holiday> hb = hs.findHoliday(ho);
		request.setAttribute( "hb", hb );
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "em_holiday" );
		return mav;
	}
	//申请假期操作
	@RequestMapping("/holiday.do")
	public ModelAndView applyHoliday(Holiday ho, HttpServletRequest request)
	{
		System.out.println(ho.getDesc());
		UserBase user = (UserBase) request.getSession().getAttribute("userbase");
		String userid = user.getId();
		ho.setUserid(userid);
		ho.setStatusid("3");
		hs.applyHoliday(ho);
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "redirect:myholiday.do" );
		return mav;
	}
	
	//任务确认完成操作
	@RequestMapping("/doneCheck.do")
	public ModelAndView doneCheck(TaskBase tk, HttpServletResponse resp,HttpServletRequest request) throws IOException
	{
		String id = request.getParameter("tid");
		tk.setId(id);
		ms.done(id);
		PrintWriter pw = resp.getWriter();
		pw.print(1);
		pw.flush();
		pw.close();
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
