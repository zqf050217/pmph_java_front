package com.bc.pmpheep.back.commuser.collection.dao;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

/**
 * @author guoxiaobao @Title: @Description: 书籍收藏dao @param @return @throws
 */
public interface BookCollectionDao {
	/**
	 * 查询书籍收藏夹以及收藏夹中收藏书的数量
	 * 
	 * @return List<Map<String,Object>>
	 */
	List<Map<String, Object>> queryBookCollectionList();

	/**
	 * 根据收藏夹id获取收藏夹内收藏的书籍
	 * 
	 * @param favoriteId
	 *            收藏夹id
	 * @return List<Map<String,Object>>
	 */
	List<Map<String, Object>> queryBookList(@Param("favoriteId") BigInteger favoriteId);

}
