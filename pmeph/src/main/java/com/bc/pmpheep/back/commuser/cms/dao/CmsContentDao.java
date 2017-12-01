package com.bc.pmpheep.back.commuser.cms.dao;

import java.util.List;

import com.bc.pmpheep.back.common.bean.Page;
import com.bc.pmpheep.back.commuser.cms.bean.CmsContent;
import com.bc.pmpheep.back.commuser.cms.bean.CmsInfoLettersList;
import com.bc.pmpheep.back.plugin.PageParameter;

/**
 * CmsContentDao实体类数据访问层接口
 * 
 * @author Mr
 * 
 */
public interface  CmsContentDao{
	/**
	 * 查询医学随笔列表
	 * @param pageParameter
	 * @return
	 */
	List<CmsContent>  list(PageParameter<CmsContent> pageParameter);
	
	/**
	 * 查询医学随笔总条数
	 * @return
	 */
	Integer getCmsContentListTotal();
	
}
