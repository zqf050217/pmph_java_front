package com.bc.pmpheep.back.commuser.personalcenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.personalcenter.service.PersonalService;
import com.bc.pmpheep.general.controller.BaseController;

//首页controller
@Controller
@RequestMapping("/personalhomepage")
public class PersonalCenterController extends BaseController {
	
	
	
	@RequestMapping("/tohomepage")
	public ModelAndView move() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("listPeo", this.getUserInfo());
		modelAndView.setViewName("commuser/personalcenter/PersonalHome");
		return modelAndView;
	}
	
}
