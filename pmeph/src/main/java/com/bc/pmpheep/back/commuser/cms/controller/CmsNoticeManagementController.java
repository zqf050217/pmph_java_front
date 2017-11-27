package com.bc.pmpheep.back.commuser.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bc.pmpheep.back.commuser.cms.service.CmsNoticeManagementService;

/**
 * 
 * 
 * 功能描述：公告列表
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
@Controller
@RequestMapping(value = "/cmsnotice")
public class CmsNoticeManagementController {
	@Autowired
	CmsNoticeManagementService cmsNoticeManagementService;
}
