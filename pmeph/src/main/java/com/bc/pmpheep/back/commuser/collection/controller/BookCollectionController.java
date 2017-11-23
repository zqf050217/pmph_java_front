package com.bc.pmpheep.back.commuser.collection.controller;

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
public class BookCollectionController {
    @Autowired
    @Qualifier("com.bc.pmpheep.back.commuser.collection.service.BookCollectionServiceImpl")
    private BookCollectionService bookCollectionService;
    
    /**
     *到书籍收藏页面
     */
    @RequestMapping(value="/tobookcollection")
    public ModelAndView toBookCollecton(){
    	Map<String,Object> map=new HashMap<String, Object>();
    	List<Map<String, Object>> bookCollection = bookCollectionService.queryBookCollectionList();
    	map.put("bookCollection", bookCollection);
    	return new ModelAndView("/commuser/collection/bookcollection",map);
    }
    
    /**
     * 到某一收藏夹的书籍收藏列表页面
     */
    @RequestMapping(value="/tobookcollectionlist")
    public ModelAndView toBookCollectonList(HttpServletRequest request){
    	Map<String,Object> map=new HashMap<String, Object>();
    	BigInteger favoriteId=new BigInteger(request.getParameter("favoriteId")); 
    	List<Map<String, Object>> booklist = bookCollectionService.queryBookList(favoriteId);
    	map.put("booklist", booklist);
    	return new ModelAndView("/commuser/collection/bookcollection",map);
    }
}
