package com.bc.pmpheep.back.authadmin.message.dao;

import java.util.List;
import java.util.Map;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description: 消息列表Dao层（机构用户）
 * @param 
 * @return 
 * @throws
 */
public interface OrgMessageDao {
    /**获取消息列表
     * @return List<OrgMessage>
     */
    List<Map<String,Object>> queryMessageList();
}
