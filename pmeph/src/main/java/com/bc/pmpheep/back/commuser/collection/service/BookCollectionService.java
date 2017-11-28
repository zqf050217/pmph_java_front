package com.bc.pmpheep.back.commuser.collection.service;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description: 书记收藏服务接口
 * @param 
 * @return 
 * @throws
 */
public interface BookCollectionService {
	 /**查询书籍收藏夹以及收藏夹中收藏书的数量
     * @return List<Map<String,Object>>  
     */
    List<Map<String,Object>> queryBookCollectionList(BigInteger writerId);
    /**根据收藏夹id获取收藏夹内收藏的书籍
     * @param favoriteId   收藏夹id
     * @return List<Map<String,Object>>
     */
    List<Map<String,Object>> queryBookList(BigInteger favoriteId,int startnum,int size,BigInteger writerId);
	/**查询某一收藏夹下书籍的数量
	 * @param favoriteId
	 * @return
	 */
	int queryBookCont(BigInteger favoriteId,BigInteger writerId);
}
