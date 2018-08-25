package com.ourfood.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.ourfood.bean.Resuser;


/**
 * 访问权限控制过滤器
 */
//@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 将请求对象转型成 Http请求
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		// 获取会话对象中的登录的用户对象
		Resuser user = (Resuser) httpRequest.getSession().getAttribute("loginedUser");
		if(user == null) {
			/**
			 * 用户未登录，跳转登录页面
			 */
			request.setAttribute("msg", "请先登录系统！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			/**
			 * 正常情况下，执行后续过滤器或访问资源
			 */
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
