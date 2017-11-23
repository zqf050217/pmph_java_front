package com.bc.pmpheep.back.commuser.homepage.service;

import java.util.List;

import com.bc.pmpheep.back.commuser.homepage.bean.HomepageDocument;

public interface HomeService {

	/**
	 * @Description: 查询前三条公文 
	 * @return List<HomepageDocument>
	 */
	List<HomepageDocument> queryDocument();
	/**
	 * @Description: 查询前五条公告 
	 * @return List<HomepageDocument>
	 */
	List<HomepageDocument> queryNotice();
	/**
	 * @Description: 查询最新四条医学随笔
	 * @return List<HomepageDocument>
	 */
	List<HomepageDocument> queryArticle();
}
