package com.bc.pmpheep.back.commuser.collection.dao;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description: 文章收藏dao
 * @param 
 * @return 
 * @throws
 */
public interface ArticleCollectionDao {
	/**查询文章收藏夹以及收藏夹中收藏文章的数量
	 * @param  writerId   BigInteger  作家用户id
     * @return List<Map<String,Object>>  
     */
    List<Map<String,Object>> queryArticleCollectionList(@Param("writerId") BigInteger writerId );
    
    /**根据收藏夹id获取收藏夹内收藏的文章
     * @param favoriteId   收藏夹id
     * @param size         分页参数，每一页展示的数据的数量
     * @param startnum     分页开始下角标
     * @param  writerId   BigInteger  作家用户id
     * @return List<Map<String,Object>>
     */
    List<Map<String,Object>> queryArticleList(@Param("favoriteId") BigInteger favoriteId,
         @Param("startnum") int startnum,@Param("size") int size,@Param("writerId") BigInteger writerId);
    /**查询某一收藏夹下文章的数量
	 * @param favoriteId
	 * @param  writerId   BigInteger  作家用户id
	 * @return
	 */
	int queryArticleCont(@Param("favoriteId") BigInteger favoriteId,@Param("writerId") BigInteger writerId);
}
