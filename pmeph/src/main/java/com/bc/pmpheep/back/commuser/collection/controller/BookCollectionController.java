package com.bc.pmpheep.back.commuser.collection.controller;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.bc.pmpheep.general.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.commuser.collection.service.BookCollectionService;

/**
 * @author guoxiaobao
 *@Title: 
 * @Description:  书籍收藏控制层
 * @param 
 * @return 
 * @throws
 */
@Controller
@RequestMapping(value="/bookcollection")

public class BookCollectionController  extends BaseController{
    @Autowired
    @Qualifier("com.bc.pmpheep.back.commuser.collection.service.BookCollectionServiceImpl")
    private BookCollectionService bookCollectionService;
    
    /**
     *到书籍收藏页面
     */
    @RequestMapping(value="/tobookcollection")
    public ModelAndView toBookCollecton(){
    	Map<String,Object> map=new HashMap<String, Object>();
    	List<Map<String, Object>> bookCollection = bookCollectionService.queryBookCollectionList(new BigInteger("1"));
    	map.put("bookCollection", bookCollection);
    	return new ModelAndView("/commuser/collection/bookcollection",map);
    }
    
    /**
     * 到某一收藏夹的书籍收藏列表页面
     * @throws UnsupportedEncodingException 
     */
    @RequestMapping(value="/tobookcollectionone")
    public ModelAndView toBookCollectonList(HttpServletRequest request) throws UnsupportedEncodingException{
    	Map<String,Object> map=new HashMap<String, Object>();
    	request.setCharacterEncoding("utf-8");
    	String favoriteName = new String(request.getParameter("favoriteName").getBytes("ISO-8859-1"),"utf-8");
    	System.out.println(favoriteName);
    	BigInteger favoriteId=new BigInteger(request.getParameter("favoriteId")); 
    	int bookcount = bookCollectionService.queryBookCont(favoriteId,new BigInteger("1"));
    	map.put("bookcount", bookcount);
    	map.put("favoriteName",favoriteName);
    	return new ModelAndView("/commuser/collection/booklist",map);
    }
    
    /**
     * 初始化某一收藏夹的书籍收藏列表
     * @throws UnsupportedEncodingException 
     */
    @RequestMapping(value="/tobookcollectionlist")
    public ModelAndView initBookList(HttpServletRequest request) throws UnsupportedEncodingException{
    	Map<String,Object> map=new HashMap<String, Object>();
    	request.setCharacterEncoding("utf-8");
    	BigInteger favoriteId=new BigInteger(request.getParameter("favoriteId")); 
    	int bookcount = bookCollectionService.queryBookCont(favoriteId,new BigInteger("1"));
    	String favoriteName = new String(request.getParameter("favoriteName").getBytes("ISO-8859-1"),"utf-8");
    	String pagenum=request.getParameter("p,agenum");
    	String pagesize=request.getParameter("pagesize");
    	int startnum=0;
    	int size=10;
    	int pages=0;
    	if(pagenum!=null&&!"".equals(pagenum)&&pagesize!=null&&!"".equals(pagesize)){
    		startnum=Integer.parseInt(pagenum)*Integer.parseInt(pagesize)-Integer.parseInt(pagesize);
    	    size=Integer.parseInt(pagesize);
    	    if((bookcount%Integer.parseInt(pagesize))==0){
    	    	pages=bookcount/Integer.parseInt(pagesize);
    	    }else{
    	    	pages=bookcount/Integer.parseInt(pagesize)+1;
    	    }
    	}else{
    		if(bookcount%size==0){
    			pages=bookcount/size;
    		}else{
    			pages=bookcount/size+1;
    		}
    		pagenum="1";
    		pagesize="10";
    	}
    	List<Map<String, Object>> booklist = bookCollectionService.queryBookList(favoriteId,startnum,size,new BigInteger("1"));
    	map.put("booklist", booklist);
    	map.put("favoriteName",favoriteName);
    	map.put("bookcount", bookcount);
    	map.put("pagenum",pagenum);
    	map.put("pagesize",pagesize);
    	map.put("pages", pages+"");
    	map.put("favoriteId", request.getParameter("favoriteId"));
    	return new ModelAndView("/commuser/collection/booklist",map);
    }
    
    
    
}
