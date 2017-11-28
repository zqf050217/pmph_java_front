package com.bc.pmpheep.back.commuser.collection.controller;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.collection.service.ArticleCollectionService;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description: 文章收藏控制类
 * @param 
 * @return 
 * @throws
 */
@Controller
@RequestMapping("/articlecollection")
public class ArticleCollectionController {
	@Autowired
	@Qualifier("com.bc.pmpheep.back.commuser.collection.service.ArticleCollectionServiceImpl")
	private ArticleCollectionService articleCollectionService;
	/**
     *到文章收藏页面
     */
    @RequestMapping(value="/toarticlecollection")
    public ModelAndView toArticleCollecton(){
    	Map<String,Object> map=new HashMap<String, Object>();
    	List<Map<String, Object>> articleCollection = articleCollectionService.queryArticleCollectionList(new BigInteger("1"));
    	map.put("articleCollection", articleCollection);
    	return new ModelAndView("/commuser/collection/articlecollection",map);
    }
    
    /**
     * 初始化某一收藏夹的文章收藏列表
     * @throws UnsupportedEncodingException 
     */
    @RequestMapping(value="/toarticlecollectionlist")
    public ModelAndView initArticleList(HttpServletRequest request) throws UnsupportedEncodingException{
    	Map<String,Object> map=new HashMap<String, Object>();
    	request.setCharacterEncoding("utf-8");
    	BigInteger favoriteId=new BigInteger(request.getParameter("favoriteId")); 
    	int articlecount = articleCollectionService.queryArticleCont(favoriteId,new BigInteger("1"));
    	String favoriteName = new String(request.getParameter("favoriteName").getBytes("ISO-8859-1"),"utf-8");
    	String pagenum=request.getParameter("pagenum");
    	String pagesize=request.getParameter("pagesize");
    	int startnum=0;
    	int size=10;
    	int pages=0;
    	if(pagenum!=null&&!"".equals(pagenum)&&pagesize!=null&&!"".equals(pagesize)){
    		startnum=Integer.parseInt(pagenum)*Integer.parseInt(pagesize)-Integer.parseInt(pagesize);
    	    size=Integer.parseInt(pagesize);
    	    if((articlecount%Integer.parseInt(pagesize))==0){
    	    	pages=articlecount/Integer.parseInt(pagesize);
    	    }else{
    	    	pages=articlecount/Integer.parseInt(pagesize)+1;
    	    }
    	}else{
    		if(articlecount%size==0){
    			pages=articlecount/size;
    		}else{
    			pages=articlecount/size+1;
    		}
    		pagenum="1";
    		pagesize="10";
    	}
    	List<Map<String, Object>> booklist = articleCollectionService.queryArticleList(favoriteId,startnum,size,new BigInteger("1"));
    	map.put("booklist", booklist);
    	map.put("favoriteName",favoriteName);
    	map.put("bookcount", articlecount);
    	map.put("pagenum",pagenum);
    	map.put("pagesize",pagesize);
    	map.put("pages", pages+"");
    	map.put("favoriteId", request.getParameter("favoriteId"));
    	return new ModelAndView("/commuser/collection/articlelist",map);
    }
}
