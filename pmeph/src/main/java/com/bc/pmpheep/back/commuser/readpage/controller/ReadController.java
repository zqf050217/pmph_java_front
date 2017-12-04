package com.bc.pmpheep.back.commuser.readpage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.readpage.service.ReadService;
import com.bc.pmpheep.back.template.service.TemplateService;

/**
 * 
 * 注释:读书主页面
 * @Author:黄琼飞
 * @date 2017-11-22下午2:18:13
 */
@Controller
@RequestMapping("/readpage")
public class ReadController {
	
	@Autowired
	@Qualifier("com.bc.pmpheep.back.commuser.readpage.service.ReadServiceImpl")
	private ReadService readService;
	@Autowired
    @Qualifier("com.bc.pmpheep.back.template.service.TemplateService")
    private TemplateService templateService;
	
	//首页跳转
	@RequestMapping("/main")
	public ModelAndView toreadMain(HttpServletRequest request, 
			HttpServletResponse res){
		ModelAndView mv = new ModelAndView("commuser/readpage/readpage");
		//热门书评
		List<Map<String,Object>> zdtjXxjyList = new ArrayList<Map<String,Object>>();
		Map<String,Object> zdtjXxjyMap =new HashMap<String,Object>();
		//查询条数
		zdtjXxjyMap.put("startrows", "1");
		zdtjXxjyMap.put("endrows", "4");
		zdtjXxjyList = readService.queryRmspReadList(zdtjXxjyMap);
		mv.addObject("rmspList", zdtjXxjyList);
		return mv;
	}
	
	//查询某类下的重点推荐图书
	@RequestMapping("searchZdtjBook")
	@ResponseBody
	public Map<String,Object> searchZdtjBook(HttpServletRequest request){
		Map<String, Object> pMap=new HashMap<String, Object>();
		List<Map<String,Object>> zdtjXxjyList = new ArrayList<Map<String,Object>>();
		Map<String,Object> zdtjXxjyMap =new HashMap<String,Object>();
		String type = request.getParameter("type");
		String html = "";
		String vm="commuser/readpage/readpage.vm";
		//图书类型
		if(type.equals("0")){
			zdtjXxjyMap.put("type", 633); //学校教育
		}else if(type.equals("1")){
			zdtjXxjyMap.put("type", 634); //毕业教育
		}else if(type.equals("2")){
			zdtjXxjyMap.put("type", 635); //继续教育
		}else if(type.equals("3")){
			zdtjXxjyMap.put("type", 636); //考试用书
		}
		//查询条数
		zdtjXxjyMap.put("startrows", "1");
		zdtjXxjyMap.put("endrows", "10");
		zdtjXxjyList = readService.queryZdtjReadList(zdtjXxjyMap);
		for(int i=0;i<zdtjXxjyList.size();i++){
			 Map<String, Object> map = new HashMap<String, Object>();
			 map.put("author", zdtjXxjyList.get(i).get("author"));
			 map.put("bookname", zdtjXxjyList.get(i).get("bookname"));
			 map.put("img", zdtjXxjyList.get(i).get("image_url"));
			 map.put("url", zdtjXxjyList.get(i).get("buy_url"));
			 html += templateService.mergeTemplateIntoString(vm, map);
			 pMap.put("pagebook", html);
		 }
		return pMap;
	}
	//查询某类下的新书推荐
	@RequestMapping("searchXstjBook")
	@ResponseBody
	public Map<String,Object> searchXstjBook(HttpServletRequest request){
		Map<String, Object> pMap=new HashMap<String, Object>();
		List<Map<String,Object>> zdtjXxjyList = new ArrayList<Map<String,Object>>();
		Map<String,Object> zdtjXxjyMap =new HashMap<String,Object>();
		String type = request.getParameter("type");
		String html = "";
		String vm="commuser/readpage/readpage.vm";
		//图书类型
		if(type.equals("0")){
			zdtjXxjyMap.put("type", 633); //学校教育
		}else if(type.equals("1")){
			zdtjXxjyMap.put("type", 634); //毕业教育
		}else if(type.equals("2")){
			zdtjXxjyMap.put("type", 635); //继续教育
		}else if(type.equals("3")){
			zdtjXxjyMap.put("type", 636); //考试用书
		}
		//查询条数
		zdtjXxjyMap.put("startrows", "1");
		zdtjXxjyMap.put("endrows", "10");
		zdtjXxjyList = readService.queryZdtjReadList(zdtjXxjyMap);
		for(int i=0;i<zdtjXxjyList.size();i++){
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("author", zdtjXxjyList.get(i).get("author"));
			map.put("bookname", zdtjXxjyList.get(i).get("bookname"));
			map.put("img", zdtjXxjyList.get(i).get("image_url"));
			map.put("url", zdtjXxjyList.get(i).get("buy_url"));
			html += templateService.mergeTemplateIntoString(vm, map);
			pMap.put("pagebook", html);
		}
		return pMap;
	}
	
	//查询某类下的图书畅销
		@RequestMapping("searchTscxBook")
		@ResponseBody
		public Map<String,Object> searchTscxBook(HttpServletRequest request){
			Map<String, Object> pMap=new HashMap<String, Object>();
			List<Map<String,Object>> zdtjXxjyList = new ArrayList<Map<String,Object>>();
			Map<String,Object> zdtjXxjyMap =new HashMap<String,Object>();
			String type = request.getParameter("type");
			String html = "";
			String vm="commuser/readpage/tscxreadpage.vm";
			//图书类型
			if(type.equals("0")){
				zdtjXxjyMap.put("type", 633); //学校教育
			}else if(type.equals("1")){
				zdtjXxjyMap.put("type", 634); //毕业教育
			}else if(type.equals("2")){
				zdtjXxjyMap.put("type", 635); //继续教育
			}else if(type.equals("3")){
				zdtjXxjyMap.put("type", 636); //考试用书
			}
			//查询条数
			zdtjXxjyMap.put("startrows", "1");
			zdtjXxjyMap.put("endrows", "6");
			zdtjXxjyList = readService.queryTscxReadList(zdtjXxjyMap);
			for(int i=0;i<zdtjXxjyList.size();i++){
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("ordernum",i+1);
				map.put("author", zdtjXxjyList.get(i).get("author"));
				map.put("bookname", zdtjXxjyList.get(i).get("bookname"));
				map.put("img", zdtjXxjyList.get(i).get("image_url"));
				map.put("url", zdtjXxjyList.get(i).get("buy_url"));
				html += templateService.mergeTemplateIntoString(vm, map);
				pMap.put("pagebook", html);
			}
			return pMap;
		}
}
