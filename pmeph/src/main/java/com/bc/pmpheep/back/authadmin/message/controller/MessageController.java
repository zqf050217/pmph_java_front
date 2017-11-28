package com.bc.pmpheep.back.authadmin.message.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.authadmin.message.service.MessageService;


@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Autowired
	MessageService messageService;
	
	//查询待办事项列表
	@RequestMapping(value="/applyMessageList")
	public ModelAndView toScheduleList(HttpServletRequest  request){
		ModelAndView mv = new ModelAndView();
		Long userId = (long) 24967;
		List<Map<String,Object>>list = messageService.selectApplyMessage(userId);
		mv.addObject("list",list);
		
		mv.setViewName("authadmin/message/applyMessage");
		return mv;
		
	}
}
