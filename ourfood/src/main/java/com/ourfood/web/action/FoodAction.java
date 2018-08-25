package com.ourfood.web.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ourfood.bean.Food;
import com.ourfood.biz.FoodBiz;
@Controller
public class FoodAction {
	
	@Resource
	private FoodBiz fbiz;
	
	@RequestMapping("/selectFood.do")
	public String selectFood(Food food, Model model) {
		
		// 将用户信息存入会话对象
		// request.getSession().setAttribute("loginedUser", resuser);

		if (food.getFname() != null) {
			List<Food> list = fbiz.selectFname(food.getFname());
			model.addAttribute("list", list);
			System.out.println(list);
			return "search_p";
		} else {
			return "index";
		}
		
	}
}
