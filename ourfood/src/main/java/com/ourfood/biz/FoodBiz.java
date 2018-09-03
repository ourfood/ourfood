package com.ourfood.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ourfood.bean.Food;
import com.ourfood.dao.FoodDao;

@Service
public class FoodBiz {
	@Resource
	private FoodDao fooddao;

	public List<Food> selectFname(String fname) {
		return fooddao.selectByFname(fname);
	}
	
	public List<Food> selectFdetail(Food food) {
		return fooddao.selectDetail(food);
	}
	
	
}
