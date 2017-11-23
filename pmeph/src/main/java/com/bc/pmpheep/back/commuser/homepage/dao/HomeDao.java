package com.bc.pmpheep.back.commuser.homepage.dao;

import java.util.List;

import com.bc.pmpheep.back.commuser.homepage.bean.HomepageDocument;


/**
 * 
 * @author xieming
 * @Description: 首页的DAO层
 */
public interface HomeDao {
	
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
