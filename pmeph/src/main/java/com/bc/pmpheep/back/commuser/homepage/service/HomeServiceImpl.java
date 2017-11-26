package com.bc.pmpheep.back.commuser.homepage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.homepage.bean.HomepageDocument;
import com.bc.pmpheep.back.commuser.homepage.dao.HomeDao;
import com.bc.pmpheep.service.exception.CheckedExceptionBusiness;
import com.bc.pmpheep.service.exception.CheckedExceptionResult;
import com.bc.pmpheep.service.exception.CheckedServiceException;

@Service("com.bc.pmpheep.back.homepage.service.HomeServiceImpl")
public class HomeServiceImpl implements HomeService {

    @Autowired
    private HomeDao homeDao;

    /**
     * 查询公文
     */
    @Override
    public List<HomepageDocument> queryDocument() throws CheckedServiceException {
        List<HomepageDocument> list = homeDao.queryDocument();
        if (list.isEmpty()) {
            CheckedServiceException exception =
            new CheckedServiceException(CheckedExceptionBusiness.AREA,
                                        CheckedExceptionResult.NULL_PARAM, "上级id参数为空");
            throw exception;
        }
        return list;
    }

    /**
     * 查询公告
     */
    @Override
    public List<HomepageDocument> queryNotice() throws CheckedServiceException {
        List<HomepageDocument> list = homeDao.queryNotice();
        return list;
    }

    /**
     * 查询医学随笔
     */
    @Override
    public List<HomepageDocument> queryArticle() throws CheckedServiceException {
        List<HomepageDocument> list = homeDao.queryArticle();
        return list;
    }
}
