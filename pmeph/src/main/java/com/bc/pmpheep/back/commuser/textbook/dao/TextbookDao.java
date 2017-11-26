package com.bc.pmpheep.back.commuser.textbook.dao;

import java.util.List;

import com.bc.pmpheep.back.common.bean.Page;
import com.bc.pmpheep.back.commuser.textbook.bean.Textbook;

/**
 * TextbookDao实体类数据访问层接口
 * 
 * @author 曾庆峰
 * 
 */
public interface TextbookDao {

    /**
     * 查询一个 Textbook 通过主键id
     * 
     * @param Textbook 必须包含主键ID
     * @return Textbook
     */
    Textbook getTextbookById(Long id);

    /**
     * 通过用户id与教材id查询书籍集合
     * 
     * @param Textbook 必须包含主键ID
     * @return Textbook
     */
    List<Textbook> listPageTextbooks(Page page);

}
