package com.ourfood.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.ourfood.bean.Food;

@Repository
public interface FoodDao {
	/**
	 * 菜品查询
	 * @param fname
	 * @return
	 */
	@Select("select * from food where fname like concat('%',#{fname},'%') ")
	List<Food> selectByFname(String fname);
}
