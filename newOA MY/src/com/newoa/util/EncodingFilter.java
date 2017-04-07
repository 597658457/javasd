package com.newoa.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	
	private String encoding;
	public EncodingFilter(){
		//System.out.println("编码过滤器被实例化");
	}
	

	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		//开始过滤了
		System.out.println("开始过滤编码了");
		arg0.setCharacterEncoding(encoding);
		arg1.setCharacterEncoding(encoding);
		arg1.setContentType("text/html;charset="+encoding);
		
		arg2.doFilter(arg0, arg1);//判断下面还有没有过滤器，如果有则到下一个过滤器，如果没有则跳到请求资源
		
	}

	
	public void init(FilterConfig config) throws ServletException {

		 encoding=config.getInitParameter("encoding");

	}

}
