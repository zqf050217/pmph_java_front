package com.bc.pmpheep.back.authadmin.applydocaudit.dao;

import java.util.List;
import java.util.Map;

import com.bc.pmpheep.back.plugin.PageParameter;

public interface DataAuditDao {

	  /**
     * 
     * <pre>
     * 功能描述：分页查询条件查询资料审核列表
     * 使用示范：
     *
     * @param pageParameter 带有分页参数和查询条件参数
     * @param sessionId 
     * @return 
     * </pre>
     */
    public List<Map<String, Object>> findDataAudit(PageParameter<Map<String, Object>> pageParameter) ;
}
