package com.bc.pmpheep.back.commuser.collection.service;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.collection.dao.ArticleCollectionDao;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description: 文章收藏服务层实现类
 * @param 
 * @return 
 * @throws
 */
@Service("com.bc.pmpheep.back.commuser.collection.service.ArticleCollectionServiceImpl")
public class ArticleCollectionServiceImpl implements ArticleCollectionService {
    @Autowired
    private ArticleCollectionDao articleCollectionDao;
	@Override
	public List<Map<String, Object>> queryArticleCollectionList(BigInteger writerId) {
		// TODO Auto-generated method stub
		return articleCollectionDao.queryArticleCollectionList(writerId);
	}

	@Override
	public List<Map<String, Object>> queryArticleList(BigInteger favoriteId,
			int startnum, int size, BigInteger writerId) {
		// TODO Auto-generated method stub
		return articleCollectionDao.queryArticleList(favoriteId, startnum, size, writerId);
	}

	@Override
	public int queryArticleCont(BigInteger favoriteId, BigInteger writerId) {
		// TODO Auto-generated method stub
		return articleCollectionDao.queryArticleCont(favoriteId, writerId);
	}

}
