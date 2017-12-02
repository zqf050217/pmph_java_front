package com.bc.pmpheep.back.commuser.cms.dao;

import java.util.List;

import com.bc.pmpheep.back.commuser.cms.bean.CmsContentVO;
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
	List<CmsContentVO>  list(PageParameter<CmsContentVO> pageParameter);
	
	/**
	 * 查询医学随笔总条数
	 * @return
	 */
	Integer getCmsContentListTotal();
	
}
