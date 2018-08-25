package com.ourfood.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.ourfood.bean.Resuser;

@Repository
public interface ResuserDao {
	/**
	 * 注册
	 * @param resuser
	 */
	@Insert("insert into resuser (username,userpwd,email,phone) values(#{username},#{userpwd},#{email},#{phone})")
	int insert(Resuser resuser);
	
	/**
	 * 登录
	 * @param resuser
	 * @return
	 */
	@Select("select * from resuser where username=#{username} and userpwd=#{userpwd} ")
	List<Resuser> selectByUnameAndPwd(Resuser resuser);
	
	@Select("select * from resuser where username=#{username} ")
	List<Resuser> selectByName(String username);
	
	
	
	
}
