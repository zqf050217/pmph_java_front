package com.bc.pmpheep.back.commuser.homepage.service;

import java.util.List;

import com.bc.pmpheep.back.commuser.homepage.bean.HomepageDocument;
import com.bc.pmpheep.service.exception.CheckedServiceException;

public interface HomeService {

    /**
     * @Description: 查询前三条公文
     * @return List<HomepageDocument>
     */
    List<HomepageDocument> queryDocument() throws CheckedServiceException;

    /**
     * @Description: 查询前五条公告
     * @return List<HomepageDocument>
     */
    List<HomepageDocument> queryNotice() throws CheckedServiceException;

    /**
     * @Description: 查询最新四条医学随笔
     * @return List<HomepageDocument>
     */
    List<HomepageDocument> queryArticle() throws CheckedServiceException;
}
