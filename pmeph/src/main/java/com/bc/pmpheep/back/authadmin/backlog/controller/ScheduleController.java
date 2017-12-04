package com.bc.pmpheep.back.authadmin.backlog.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.authadmin.backlog.service.ScheduleService;

/**
 * 
 * @author Administrator
 *待办事项控制类
 */
@Controller
@RequestMapping("/schedule")
public class ScheduleController {
	@Autowired
	@Qualifier("com.bc.pmpheep.back.authadmin.backlog.service.ScheduleServiceImpl")
	private
	ScheduleService scheduleService;
	
	//查询待办事项列表
	@RequestMapping(value="/scheduleList")
	public ModelAndView toScheduleList(HttpServletRequest  request){
		Long userId = (long) 1383;
		String  currentPageStr = (String) request.getParameter("currentPage");
		String  pageSizeStr = request.getParameter("pageSize");
		int currentPage = 0;
		int pageSize = 2;
		if(null!=currentPageStr&&!currentPageStr.equals("")){
			 currentPage = Integer.parseInt(currentPageStr);
		}
		if(null!=pageSizeStr&&!pageSizeStr.equals("")){
			 pageSize = Integer.parseInt(pageSizeStr);
		}
		Map<String,Object> paraMap = new HashMap<String,Object>();
		
		paraMap.put("userId", userId);
		paraMap.put("endPage", pageSize);
		paraMap.put("startPage", currentPage*(pageSize-1));
		
		
		List<Map<String,Object>> list = scheduleService.selectScheduleList(paraMap);
		int pageCount = scheduleService.selectScheduleCount(paraMap);
		Map<String,Object> map = scheduleService.selectOrgUser(userId);
		boolean license =  (boolean) map.get("is_proxy_upload");
		boolean progress = (boolean) map.get("progress");
		if(license==true&&progress==true){
			map.put("license",true);
		}else{
			map.put("license",false);
		}
		
		//总页数
		int totalPage  = pageCount/pageSize;
		if(pageCount%pageSize>0){
			totalPage+=1;
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("listMap",list);
		mv.addObject("map",map);
		mv.addObject("listSize",list.size());
		mv.addObject("totalPage",totalPage);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageSize",pageSize);
		
		mv.setViewName("authadmin/backlog/schedule");
		return mv;
		
	}
	//查询办事记录列表
	@RequestMapping(value="/eventRecord")
	public ModelAndView toEventRecord(HttpServletRequest  request){
		Long userId = (long) 1383;
		String  currentPageStr = (String) request.getParameter("currentPage");
		String  pageSizeStr = request.getParameter("pageSize");
		int currentPage = 0;
		int pageSize = 2;
		if(null!=currentPageStr&&!currentPageStr.equals("")){
			 currentPage = Integer.parseInt(currentPageStr);
		}
		if(null!=pageSizeStr&&!pageSizeStr.equals("")){
			 pageSize = Integer.parseInt(pageSizeStr);
		}
		Map<String,Object> paraMap = new HashMap<String,Object>();
		
		paraMap.put("userId", userId);
		paraMap.put("endPage", pageSize);
		paraMap.put("startPage", currentPage*(pageSize-1));
		
		
		List<Map<String,Object>> list = scheduleService.selectScheduleList(paraMap);
		int pageCount = scheduleService.selectScheduleCount(paraMap);
		Map<String,Object> map = scheduleService.selectOrgUser(userId);
		boolean license =  (boolean) map.get("is_proxy_upload");
		boolean progress = (boolean) map.get("progress");
		if(license==true&&progress==true){
			map.put("license",true);
		}else{
			map.put("license",false);
		}
		
		//总页数
		int totalPage  = pageCount/pageSize;
		if(pageCount%pageSize>0){
			totalPage+=1;
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("listMap",list);
		mv.addObject("map",map);
		mv.addObject("listSize",list.size());
		mv.addObject("totalPage",totalPage);
		mv.addObject("currentPage",currentPage);
		mv.addObject("pageSize",pageSize);
		
		mv.setViewName("authadmin/backlog/schedule");
		return mv;
		
	}
	
}
