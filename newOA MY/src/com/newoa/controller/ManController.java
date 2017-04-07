package com.newoa.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newoa.pojo.Holiday;
import com.newoa.pojo.TaskBase;
import com.newoa.pojo.UserBase;
import com.newoa.service.HolidayService;
import com.newoa.service.ManService;
import com.newoa.service.UserBaseService;
@Controller
@RequestMapping("man")
public class ManController {
	@Autowired
	private ManService ms;
	@Autowired
	private HolidayService hs;
	@Autowired
	private UserBaseService ubs;
	//所有审批页面
	@RequestMapping("/all.do")	
	public ModelAndView allApprove(Holiday ho, HttpServletRequest request)
	{
		UserBase user = (UserBase) request.getSession().getAttribute("userbase");
		String departmentid = user.getDepartmentid();
		ho.setDepartmentid(departmentid);
		List<Holiday> holiday = hs.findHoliday(ho);
		request.setAttribute( "approve", holiday );
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "management" );
		return mav;
	}
	@RequestMapping("/add.do")
	public ModelAndView add(TaskBase tb, HttpServletRequest request) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("login");
			return mav;
		}
}
