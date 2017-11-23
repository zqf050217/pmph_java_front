package com.bc.pmpheep.back.commuser.homepage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.homepage.bean.HomepageDocument;
import com.bc.pmpheep.back.commuser.homepage.dao.HomeDao;



@Service("com.bc.pmpheep.back.homepage.service.HomeServiceImpl")
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private HomeDao homeDao;
	
	/**
	 * 查询公文
	 */
	@Override
	public List<HomepageDocument> queryDocument(){
		List<HomepageDocument> list=homeDao.queryDocument();
		return list;
	}
	/**
	 * 查询公告
	 */
	@Override
	public List<HomepageDocument> queryNotice(){
		List<HomepageDocument> list=homeDao.queryNotice();
		return list;
	}
	/**
	 * 查询医学随笔
	 */
	@Override
	public List<HomepageDocument> queryArticle(){
		List<HomepageDocument> list=homeDao.queryArticle();
		return list;
	}
}
