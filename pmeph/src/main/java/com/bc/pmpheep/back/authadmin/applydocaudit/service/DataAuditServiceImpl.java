package com.bc.pmpheep.back.authadmin.applydocaudit.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.authadmin.applydocaudit.dao.DataAuditDao;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.back.util.CollectionUtil;
import com.bc.pmpheep.back.util.PageParameterUitl;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * <pre>
 * 功能描述：资料审核 接口实现
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
@Service("com.bc.pmpheep.back.authadmin.applydocaudit.service.DataAuditServiceImpl")
public class DataAuditServiceImpl implements DataAuditService {
    @Autowired
    DataAuditDao       dataAuditDao;
   
    @Override
    public PageResult<Map<String, Object>> findDataAudit(PageParameter<Map<String, Object>> pageParameter,
    String sessionId) throws CheckedServiceException {
        // 获取当前登陆用户
//        PmphUser pmphUser = SessionUtil.getPmphUserBySessionId(sessionId);
//        if (ObjectUtil.isNull(pmphUser) || ObjectUtil.isNull(pmphUser.getId())) {
//            throw new CheckedServiceException(CheckedExceptionBusiness.CMS,
//                                              CheckedExceptionResult.NULL_PARAM, "用户为空");
//        }
        
        PageResult<Map<String, Object>> pageResult = new PageResult<Map<String, Object>>();
        // 将页面大小和页面页码拷贝
        PageParameterUitl.CopyPageParameter(pageParameter, pageResult);
        // 包含数据总条数的数据集
        List<Map<String, Object>> dataAuditList = dataAuditDao.findDataAudit(pageParameter);
        if (CollectionUtil.isNotEmpty(dataAuditList)) {
            Integer count = dataAuditList.size();
            pageResult.setTotal(count);
            pageResult.setRows(dataAuditList);
        }
        return pageResult;
    }

  
}
