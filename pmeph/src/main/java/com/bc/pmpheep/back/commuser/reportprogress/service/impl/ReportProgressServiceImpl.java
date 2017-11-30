package com.bc.pmpheep.back.commuser.reportprogress.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.reportprogress.bean.TextBookCheckVO;
import com.bc.pmpheep.back.commuser.reportprogress.dao.ReportProgressDao;
import com.bc.pmpheep.back.commuser.reportprogress.service.ReportProgressService;
import com.bc.pmpheep.back.util.ObjectUtil;
import com.bc.pmpheep.service.exception.CheckedExceptionBusiness;
import com.bc.pmpheep.service.exception.CheckedExceptionResult;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * <pre>
 * 功能描述：申报进度业务访问层接口实现类
 * 使用示范：
 * 
 * 
 * @author (作者) nyz
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017-11-30
 * @modify (最后修改时间) 
 * @修改人 ：nyz 
 * @审核人 ：
 * </pre>
 */
@Service
public class ReportProgressServiceImpl implements ReportProgressService {
    @Autowired
    ReportProgressDao reportProgressDao;

    @Override
    public TextBookCheckVO getMaterialProgress(Long userId, Long materialId) throws Exception {
        if (ObjectUtil.isNull(userId) || ObjectUtil.isNull(materialId)) {
            throw new CheckedServiceException(CheckedExceptionBusiness.MATERIAL,
                                              CheckedExceptionResult.NULL_PARAM, "参数为空");
        }
        return reportProgressDao.getMaterialProgress(userId, materialId);
    }

    @Override
    public List<TextBookCheckVO> getTextBookCheckResult(Long userId, Long materialId)
    throws Exception {
        if (ObjectUtil.isNull(userId) || ObjectUtil.isNull(materialId)) {
            throw new CheckedServiceException(CheckedExceptionBusiness.MATERIAL,
                                              CheckedExceptionResult.NULL_PARAM, "参数为空");
        }
        return reportProgressDao.getTextBookCheckResult(userId, materialId);
    }

}
