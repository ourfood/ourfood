package com.ourfood.web.action;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ourfood.util.CodeUtil;
import com.ourfood.util.MailUtil;
@Controller
public class SendEmailAction {
	@RequestMapping("sendEmail.do")
	public void sendEmail(  Model model, HttpServletRequest request) {
		
		String email = request.getParameter("email");
		
		CodeUtil cu = new CodeUtil(email);
		// 生成激活码
		String code = cu.generateUniqueCode();
		// 通过线程的方式给用户发送一封邮件
		new Thread(new MailUtil(email, code)).start();
	}
}
