package com.bc.pmpheep.back.authadmin.accountset.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.authadmin.accountset.service.adminInfoService;


/**
 * 机构个人资料信息查询以及修改
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/adminInfo")
public class adminInfoController {
	@Autowired
	@Qualifier("com.bc.pmpheep.back.authadmin.accountset.service.adminInfoImpl") 
	private adminInfoService adminInfoService;
	
	//查询机构个人资料信息
	@RequestMapping(value="/selectAdminInfo")
	public ModelAndView selectAdminInfo(){
		Long userId = (long) 1016;
		Map<String,Object> map=adminInfoService.selectAdminInfo(userId);
		ModelAndView mv = new ModelAndView();
		return mv;
		
	}
	
	
	
}
