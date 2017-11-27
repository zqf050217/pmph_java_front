package com.bc.pmpheep.back.commuser.cms.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.cms.bean.CmsInfoLettersList;
import com.bc.pmpheep.back.commuser.cms.service.CmsInfoLettersManagementService;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.controller.bean.ResponseBean;

/**
 * 
 * 
 * 功能描述：焦点信息列表
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
@RequestMapping(value = "/cmsinfoletters")
public class CmsInfoLettersManagementController {
	@Autowired
	CmsInfoLettersManagementService cmsInfoLettersManagementService;

	/**
	 * 
	 * 
	 * 功能描述：前台获取信息快报的列表
	 *
	 * @param pageSize
	 *            一页的数据数量
	 * @param pageNumber
	 *            当前第几页
	 * @param isHot
	 *            是否热门
	 * @return
	 *
	 */
	@RequestMapping(value = "/tolist", method = RequestMethod.GET)
	public ModelAndView list(Integer pageSize, Integer pageNumber, Boolean isHot) {
		PageParameter<CmsInfoLettersList> pageParameter = new PageParameter<>(pageNumber, pageSize);
		CmsInfoLettersList cmsInfoLettersList = new CmsInfoLettersList();
		cmsInfoLettersList.setIsHot(isHot);
		pageParameter.setParameter(cmsInfoLettersList);
		Map<String, ResponseBean<CmsInfoLettersList>> map = new HashMap<>();
		map.put("CmsInfoLettersList", new ResponseBean(cmsInfoLettersManagementService.list(pageParameter)));
		return new ModelAndView("commuser/cmsinfoletters/list", map);
	}
}
