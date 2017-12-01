package com.bc.pmpheep.back.commuser.cms.service;

import java.util.List;

import com.bc.pmpheep.back.common.bean.Page;
import com.bc.pmpheep.back.commuser.cms.bean.CmsContent;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;

/**
 * CmsContent 接口
 * @author Mr
 *
 */
public interface CmsContentService {
	/**
	 * 查询医学随笔列表
	 * @return
	 * @throws Exception
	 */
	PageResult<CmsContent> list(PageParameter<CmsContent> pageParameter);
	
}
