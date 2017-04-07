package com.newoa.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.newoa.pojo.UserBase;
import com.newoa.util.Constants;
import com.newoa.util.StringUtil;

public class LoginHandlerInterceptor implements HandlerInterceptor {
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		String path = request.getServletPath();
		if (!StringUtil.isEmpty(path)) {
			if (path.indexOf("login") > 0)
				return true;
		}
		HttpSession session = request.getSession();
		UserBase ub = (UserBase) session.getAttribute("userbase");
		if (ub == null) {
			System.out.println("you have to login the system first!");
			// 跳转到登录页面
			response.sendRedirect("http://localhost/newOA/login/toLogin.do");

			return false;
		}
		return true;
	}

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

}
