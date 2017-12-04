package com.bc.pmpheep.back.commuser.collection.dao;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author guoxiaobao @Title: @Description: 书籍收藏dao @param @return @throws
 */
@Repository
public interface BookCollectionDao {
     /**查询书籍收藏夹以及收藏夹中收藏书的数量
      * @param  writerId   BigInteger  作家用户id
     * @return List<Map<String,Object>>  
     */
    List<Map<String,Object>> queryBookCollectionList(@Param("writerId") BigInteger writerId );
    
    /**根据收藏夹id获取收藏夹内收藏的书籍
     * @param favoriteId   收藏夹id
     * @param size         分页参数，每一页展示的数据量
     * @param startnum     分页开始的下角标
     * @param  writerId   BigInteger  作家用户id
     * @return List<Map<String,Object>>
     */
    List<Map<String,Object>> queryBookList(@Param("favoriteId") BigInteger favoriteId,
         @Param("startnum") int startnum,@Param("size") int size,@Param("writerId") BigInteger writerId);
    /**查询某一收藏夹下书籍的数量
	 * @param favoriteId
	 * @param  writerId   BigInteger  作家用户id
	 * @return int
	 */
	int queryBookCont(@Param("favoriteId") BigInteger favoriteId,@Param("writerId") BigInteger writerId);
}
