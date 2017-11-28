package com.bc.pmpheep.back.commuser.cms.service;

import com.bc.pmpheep.back.commuser.cms.bean.CmsNoticeList;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * 
 * 功能描述：遴选公告列表业务层
 * 
 * 
 * 
 * @author (作者) 曾庆峰
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017年11月27日
 * @modify (最后修改时间)
 * @修改人 ：曾庆峰
 * @审核人 ：
 *
 */
public interface CmsNoticeManagementService {
	/**
	 * 
	 * 
	 * 功能描述：前台获取公告列表
	 *
	 * @param pageParameter
	 * @return
	 * @throws CheckedServiceException
	 *
	 */
	PageResult<CmsNoticeList> list(PageParameter<CmsNoticeList> pageParameter) throws CheckedServiceException;
}
