package com.bc.pmpheep.back.commuser.mymessage.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.mymessage.bean.MyMessageVO;
import com.bc.pmpheep.back.commuser.mymessage.service.MyMessageService;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.controller.bean.ResponseBean;

@Controller
@RequestMapping("/mymessage")
public class MyMessageController {

	@Autowired
	MyMessageService myMessageService;

	@RequestMapping(value = "/tolist", method = RequestMethod.GET)
	public ModelAndView list(Integer pageSize, Integer pageNumber, Long userId, Integer userType, String title,
			Boolean isRead) {
		PageParameter<MyMessageVO> pageParameter = new PageParameter<>(pageNumber, pageSize);
		MyMessageVO myMessageVO = new MyMessageVO();
		myMessageVO.setUserId(userId);
		myMessageVO.setUserType(userType);
		myMessageVO.setTitle(title);
		myMessageVO.setIsRead(isRead);
		pageParameter.setParameter(myMessageVO);
		Map<String, PageResult<MyMessageVO>> map = new HashMap<>();
		map.put("mymessage", myMessageService.listMyMessage(pageParameter));
		return new ModelAndView("commuser/mymessage/list", map);
	}

	@RequestMapping(value = "/toicon", method = RequestMethod.GET)
	public ModelAndView icon(Integer pageSize, Integer pageNumber, Long userId, Integer userType) {
		PageParameter<MyMessageVO> pageParameter = new PageParameter<>(pageNumber, pageSize);
		MyMessageVO myMessageVO = new MyMessageVO();
		myMessageVO.setUserId(userId);
		myMessageVO.setUserType(userType);
		myMessageVO.setIsRead(false);
		pageParameter.setParameter(myMessageVO);
		Map<String, PageResult<MyMessageVO>> map = new HashMap<>();
		map.put("mymessage", myMessageService.listMyMessageOfIcon(pageParameter));
		return new ModelAndView("commuser/mymessage/icon", map);
	}

	@RequestMapping(value = "/todetail", method = RequestMethod.PUT)
	public ModelAndView detail(Long id) {
		Map<String, MyMessageVO> map = new HashMap<>();
		map.put("mymessage", myMessageService.updateMyMessageDetail(id));
		return new ModelAndView("commuser/mymessage/detail", map);
	}

}
