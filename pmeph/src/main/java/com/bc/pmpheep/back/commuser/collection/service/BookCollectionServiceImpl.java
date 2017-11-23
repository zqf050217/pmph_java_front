package com.bc.pmpheep.back.commuser.collection.service;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.collection.dao.BookCollectionDao;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description: 书记收藏接口实现
 * @param 
 * @return 
 * @throws
 */
@Service("com.bc.pmpheep.back.commuser.collection.service.BookCollectionServiceImpl")
public class BookCollectionServiceImpl implements BookCollectionService {
	@Resource
	private BookCollectionDao   bookCollectionDao;

	@Override
	public List<Map<String, Object>> queryBookCollectionList() {
		return bookCollectionDao.queryBookCollectionList();
	}

	@Override
	public List<Map<String, Object>> queryBookList(BigInteger favoriteId) {
		// TODO Auto-generated method stub
		return bookCollectionDao.queryBookList(favoriteId);
	}

}
