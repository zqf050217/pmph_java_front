package com.bc.pmpheep.back.commuser.materialdec.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.materialdec.service.MaterialDetailService;
import com.bc.pmpheep.general.controller.BaseController;

/**
 * 注释:教材申报
 * @Author:黄琼飞
 * @date 2017-11-27上午10:10:34
 */
@Controller
@RequestMapping("/material/")
public class MaterialDetailController extends BaseController{
	
	@Autowired
	@Qualifier("com.bc.pmpheep.back.commuser.materialdec.service.MaterialDetailServiceImpl")
	private MaterialDetailService mdService;
	
	//查看详情
	@RequestMapping("showMaterial")
	public ModelAndView showMaterial(HttpServletRequest request){
		ModelAndView mav = new ModelAndView("commuser/materialdec/showMaterial");
		List<Map<String,Object>> gezlList = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> tsxzList = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> stuList = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> workList = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> steaList = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> jcbjList = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> gjkcjsList = new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> jcbxList = new ArrayList<Map<String,Object>>();
		//传参  user_id  material_id
	//	String user_id = request.getParameter("user_id");
	//	String material_id = request.getParameter("material_id");
		String user_id = "32781";
		String material_id = "123";
		Map<String,Object> queryMap = new HashMap<String,Object>();
		queryMap.put("user_id", user_id);
		queryMap.put("material_id", material_id);
		
		gezlList = this.mdService.queryPerson(queryMap);
		queryMap.put("declaration_id", gezlList.get(0).get("id"));
		
		tsxzList=this.mdService.queryTsxz(queryMap);
		stuList=this.mdService.queryStu(queryMap);
		workList=this.mdService.queryWork(queryMap);
		steaList=this.mdService.queryStea(queryMap);
		jcbjList=this.mdService.queryJcbj(queryMap);
		gjkcjsList=this.mdService.queryGjkcjs(queryMap);
		jcbxList=this.mdService.queryJcbx(queryMap);
		
		mav.addObject("gezlList", gezlList.get(0));
		mav.addObject("tsxzList", tsxzList);
		mav.addObject("stuList", stuList);
		mav.addObject("workList", workList);
		mav.addObject("steaList", steaList);
		mav.addObject("jcbjList", jcbjList);
		mav.addObject("gjkcjsList", gjkcjsList);
		mav.addObject("jcbxList", jcbxList);
		return mav;
	}
}
