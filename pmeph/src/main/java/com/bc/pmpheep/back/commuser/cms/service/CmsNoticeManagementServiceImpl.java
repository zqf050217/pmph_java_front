package com.bc.pmpheep.back.commuser.cms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.cms.dao.CmsNoticeManagementDao;

/**
 * 
 * 
 * 功能描述：遴选公告业务实现
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
@Service
public class CmsNoticeManagementServiceImpl implements CmsNoticeManagementService {
	@Autowired
	CmsNoticeManagementDao cmsNoticeManagementDao;
}