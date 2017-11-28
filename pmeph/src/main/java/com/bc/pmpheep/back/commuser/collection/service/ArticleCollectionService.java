package com.bc.pmpheep.back.commuser.collection.service;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description: 文章收藏服务层接口
 * @param 
 * @return 
 * @throws
 */
public interface ArticleCollectionService {
	/**查询文章收藏夹以及收藏夹中收藏文章的数量
	 * @param  writerId   BigInteger  作家用户id
     * @return List<Map<String,Object>>  
     */
    List<Map<String,Object>> queryArticleCollectionList(BigInteger writerId );
    
    /**根据收藏夹id获取收藏夹内收藏的文章
     * @param favoriteId   收藏夹id
     * @param size         分页参数，每一页展示的数据的数量
     * @param startnum     分页开始下角标
     * @param  writerId   BigInteger  作家用户id
     * @return List<Map<String,Object>>
     */
    List<Map<String,Object>> queryArticleList(BigInteger favoriteId,
         int startnum,int size,BigInteger writerId);
    /**查询某一收藏夹下文章的数量
	 * @param favoriteId
	 * @param  writerId   BigInteger  作家用户id
	 * @return
	 */
	int queryArticleCont( BigInteger favoriteId, BigInteger writerId);
}
