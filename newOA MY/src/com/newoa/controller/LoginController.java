package com.newoa.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newoa.pojo.TaskBase;
import com.newoa.pojo.UserBase;
import com.newoa.service.UserBaseService;
import com.newoa.pojo.ResultBean;
import com.newoa.util.Constants;
@Controller
@RequestMapping("login")
public class LoginController {
//登陆界面
	@RequestMapping("/toLogin.do")
	public ModelAndView toLogin(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	@Autowired
	public UserBaseService ubs;
//不同角色登陆的不同页面
	@RequestMapping("/loginCheck.do")
	public ModelAndView loginCheck(UserBase ub, HttpServletRequest request) {
		UserBase user = ubs.login(ub);

		ResultBean rtBean = new ResultBean();
		ModelAndView mav = new ModelAndView();
		if (user != null) {
			System.out.println("登录成功!");
			String userid = ub.getId();
			UserBase userbase = ubs.getuser(userid);
			HttpSession session = request.getSession();
			session.setAttribute("userbase", userbase);
			if (userbase.getRoleid().equals("1")) {
				mav.setViewName("main1");
				return mav;
			} else if (userbase.getRoleid().equals("2")) {
				mav.setViewName("main2");
				return mav;
			} else if (userbase.getRoleid().equals("3")) {
				mav.setViewName("main3");
				return mav;
			} 
		}else {
				rtBean.setStatus(-1);
				rtBean.setMsg("登录失败了,请重新登陆！！！");
				mav.addObject("rtBean", rtBean);
				mav.setViewName("login");
				return mav;
		}
		return mav;
	}
	
	@RequestMapping("/left1")
	public ModelAndView left1(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("left1");
		return mav;
	}

	@RequestMapping("/left2")
	public ModelAndView left2(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("left2");
		return mav;
	}

	@RequestMapping("/left3")
	public ModelAndView left3(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("left3");
		return mav;
	}

	@RequestMapping("/right")
	public ModelAndView right(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("right");
		return mav;
	}

	@RequestMapping("/top")
	public ModelAndView top(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("top");
		return mav;
	}
	@RequestMapping("/allem.do")
	public ModelAndView allem(UserBase ub, HttpServletRequest request) {
	 List<UserBase> userlist=new ArrayList<UserBase>();
		HttpSession session = request.getSession();
		userlist=ubs.findAll();		
		ModelAndView mav = new ModelAndView();
		mav.addObject("userlist", userlist);
		mav.setViewName("hr_alluser");
		return mav;		
	}
	
	@RequestMapping("/addem.do")
	public ModelAndView addem(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hr_adduser");
		return mav;		
	}
	//修改员工页面
	@RequestMapping("/alt.do")
	public ModelAndView alt(UserBase ub, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		ub.setId(id);
		System.out.println(id);
		UserBase ubase=ubs.login(ub);
		request.setAttribute("ubase", ubase);
		mav.setViewName("hr_changeuser");
		return mav;		
	}
	//编辑用户
	@RequestMapping("/change.do")
	public ModelAndView change(UserBase ub, HttpServletRequest request)
	{
		String id = request.getParameter("id");
		ub.setId(id);
		System.out.println(id);
		ubs.updateUser(ub);
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "redirect:allem.do" );
		return mav;
	}
	//添加员工操作后显示
	@RequestMapping("/add.do")
	public ModelAndView add(UserBase ub, HttpServletRequest request)
	{
		ubs.addUser(ub);
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "redirect:allem.do" );
		return mav;
	}
	//删除用户
	@RequestMapping("/del.do")
	public ModelAndView del(UserBase ub, HttpServletRequest request)
	{
		String userid=request.getParameter("id");
		ubs.deleteUser(userid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName( "redirect:allem.do" );
		return mav;
	}
	
	public UserBaseService getUbs() {
		return ubs;
	}

	public void setUbs(UserBaseService ubs) {
		this.ubs = ubs;
	}

}