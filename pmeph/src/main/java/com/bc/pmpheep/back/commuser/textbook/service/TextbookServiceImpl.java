package com.bc.pmpheep.back.commuser.textbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.common.bean.Page;
import com.bc.pmpheep.back.commuser.textbook.bean.Textbook;
import com.bc.pmpheep.back.commuser.textbook.dao.TextbookDao;
import com.bc.pmpheep.service.exception.CheckedExceptionBusiness;
import com.bc.pmpheep.service.exception.CheckedExceptionResult;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * TextbookService 实现
 * 
 * @author 曾庆峰
 * 
 */
@Service
public class TextbookServiceImpl implements TextbookService {

    @Autowired
    private TextbookDao textbookDao;

    /**
     * 
     * @param id
     * @return Textbook
     * @throws CheckedServiceException
     */
    @Override
    public Textbook getTextbookById(Long id) throws Exception {
        if (null == id) {
            throw new CheckedServiceException(CheckedExceptionBusiness.TEXTBOOK,
                                              CheckedExceptionResult.NULL_PARAM, "主键为空");
        }
        return textbookDao.getTextbookById(id);
    }

    @Override
    public List<Textbook> listPageTextbooks(Page page) throws Exception {
        // if (ObjectUtil.notNull(page)) {
        // throw new CheckedServiceException(CheckedExceptionBusiness.TEXTBOOK,
        // CheckedExceptionResult.NULL_PARAM, "主键为空");
        // }
        return textbookDao.listPageTextbooks(page);
    }

}
