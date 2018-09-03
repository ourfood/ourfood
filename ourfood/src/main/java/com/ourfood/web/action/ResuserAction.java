package com.ourfood.web.action;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ourfood.bean.Resuser;
import com.ourfood.biz.ResuserBiz;
import com.ourfood.dao.ResuserDao;
import com.ourfood.util.MD5Utils;

@Controller
public class ResuserAction {
	@Resource
	private ResuserBiz resuserbiz;
	@Resource
	private ResuserDao resuserdao;

	@RequestMapping("login.do")
	public String login(Resuser resuser, Model model, HttpServletRequest request,PrintWriter out) {
		resuser.setUserpwd(MD5Utils.MD5(resuser.getUserpwd()));

		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		
		
		// request.getSession().setAttribute("loginedUser", resuser);
		if (username != null && userpwd != null) {
			List<Resuser> list = resuserbiz.login(resuser);
			System.out.println(list);
			
			if(list.size() <= 0) {
				
				return "login";
				
			}else {
				// 将用户信息存入会话对象
				HttpSession session=request.getSession();
				session.setAttribute("user",list.get(0));
				return "index";
				
			}
		} else {
			return "login";
		}
	}

	@RequestMapping("register.do")
	public String register(Resuser resuser, Model model, HttpServletRequest request) {
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		List<Resuser> theName = resuserdao.selectByName(username);
		if (theName.size() > 0) {
			System.out.println("该用户名/邮箱/手机号已经被注册！");
			return "register";
		} else {
			resuser.setUsername(username);
			resuser.setUserpwd(MD5Utils.MD5(userpwd));
			resuser.setEmail(email);
			resuser.setPhone(phone);

			int result = resuserbiz.register(resuser);
			if (result <0) {
				System.out.println("注册失败，该用户名/邮箱/手机号已被注册！");
				return "register"; 
			} 
		}
		return "login";
	}
	

	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session,PrintWriter out) {
		session.invalidate();
		return "index";
	}
}
