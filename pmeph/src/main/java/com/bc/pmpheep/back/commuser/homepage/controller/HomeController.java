package com.bc.pmpheep.back.commuser.homepage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.homepage.bean.HomepageDocument;
import com.bc.pmpheep.back.commuser.homepage.service.HomeService;


//首页controller
@Controller
@RequestMapping("/homepage")
public class HomeController {

	@Autowired
	@Qualifier("com.bc.pmpheep.back.homepage.service.HomeServiceImpl")
	private HomeService homeService;
	
	@RequestMapping("/tohomepage")
	public ModelAndView move(String a){
	 ModelAndView modelAndView=new ModelAndView();
	 List<HomepageDocument> listDou=homeService.queryDocument();
	 List<HomepageDocument> listNot=homeService.queryNotice();
	 List<HomepageDocument> listArt=homeService.queryArticle();
	 modelAndView.addObject("listDou",listDou);
	 modelAndView.addObject("listNot",listNot);
	 modelAndView.addObject("listArt",listArt);
	 modelAndView.setViewName("commuser/homepage/homepage");
	 return modelAndView;
	}
}
