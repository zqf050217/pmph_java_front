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
        TextBookCheckVO textBookCheckVO = reportProgressDao.getMaterialProgress(userId, materialId);
        if (ObjectUtil.notNull(textBookCheckVO)) {
            // 审核进度 0=未提交/1=已提交/2=被退回/3=通过
            Integer online_progress_1 = 1;
            Integer online_progress_2 = 2;
            if (online_progress_1.intValue() == textBookCheckVO.getOnlineProgress().intValue()
                || online_progress_2 == textBookCheckVO.getOnlineProgress().intValue()) {
                textBookCheckVO.setOnlineSubmit(1);// 已提交
            }
        }
        return textBookCheckVO;
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
