package com.bc.pmpheep.back.authadmin.applydocaudit.service;

import java.util.Map;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * <pre>
 * 功能描述：CmsContentService 接口
 * 使用示范：
 * 
 * 
 * @author (作者) nyz
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017-10-25
 * @modify (最后修改时间) 
 * @修改人 ：nyz 
 * @审核人 ：
 * </pre>
 */
public interface DataAuditService {
   
    /**
     * 
     * <pre>
     * 功能描述：分页查询条件查询《资料审核》列表
     * 使用示范：
     *
     * @param pageParameter 带有分页参数和查询条件参数
     * @param sessionId 
     * @return 分页结果集
     * @throws CheckedServiceException
     * </pre>
     */
    PageResult<Map<String, Object>> findDataAudit(PageParameter<Map<String, Object>> pageParameter,
    String sessionId) throws CheckedServiceException;

   
}
