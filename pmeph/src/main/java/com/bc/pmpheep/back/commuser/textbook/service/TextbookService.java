package com.bc.pmpheep.back.commuser.textbook.service;

import java.util.List;

import com.bc.pmpheep.back.common.bean.Page;
import com.bc.pmpheep.back.commuser.textbook.bean.Textbook;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * TextbookService 接口
 * 
 * @author 曾庆峰
 * 
 */
public interface TextbookService {

    /**
     * 查询一个 Textbook 通过主键id
     * 
     * @param id
     * @return Textbook
     * @throws CheckedServiceException
     */
    Textbook getTextbookById(Long id) throws Exception;

    /**
     * 
     * <pre>
      * 功能描述：查询书籍列表
      * 使用示范：
      *
      * @param page 分页对象
      * @return  
      * @throws CheckedServiceException
      * </pre>
     */
    List<Textbook> listPageTextbooks(Page page) throws Exception;
}
