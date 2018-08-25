package com.ourfood.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ourfood.bean.Resuser;
import com.ourfood.dao.ResuserDao;

@Service
public class ResuserBiz {
	  	@Resource
		private ResuserDao resuserdao;
		
		public List<Resuser> login(Resuser resuser){
				return resuserdao.selectByUnameAndPwd(resuser);	
		}
		

		public int register(Resuser resuser){
				return resuserdao.insert(resuser);	
		}
	
}
