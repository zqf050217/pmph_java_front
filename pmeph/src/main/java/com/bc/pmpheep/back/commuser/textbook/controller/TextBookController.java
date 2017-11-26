package com.bc.pmpheep.back.commuser.textbook.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.common.bean.Page;
import com.bc.pmpheep.back.common.controller.BaseController;
import com.bc.pmpheep.back.commuser.textbook.bean.Textbook;
import com.bc.pmpheep.back.commuser.textbook.service.TextbookService;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * <pre>
 * 功能描述：书籍控制器
 * 使用示范：
 * 
 * 
 * @author (作者) nyz
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017-11-25
 * @modify (最后修改时间) 
 * @修改人 ：nyz 
 * @审核人 ：
 * </pre>
 */
@Controller
@RequestMapping(value = "/textBook")
@SuppressWarnings("all")
public class TextBookController extends BaseController {

    private final String    BUSSINESS_TYPE = "教材书籍";

    @Resource
    private TextbookService bookService;

    /**
     * 
     * <pre>
     * 功能描述：查询书籍列表
     * 使用示范：
     *
     * @param materialId
     * @return
     * </pre>
     */
    @RequestMapping(value = "/list")
    public ModelAndView list(Page page, Textbook textbook) throws Exception {
        logBefore(logger, "查询书箱列表");
        ModelAndView mv = this.getModelAndView();
        String pageUrl = "textbook/textbook_list";
        try {
            page.setObject(textbook);
            List<Textbook> varList = bookService.listPageTextbooks(page); // 列出Textbook列表
            // if (!varList.isEmpty()) {
            // throw new ClassCastException();
            // }
            mv.setViewName(pageUrl);
            mv.addObject("varList", varList);
            mv.addObject("obj", textbook);
        } catch (CheckedServiceException e) {
            throw new CheckedServiceException(e.getBusiness(), e.getResult(), e.getMessage(),
                                              pageUrl);
        }
        return mv;
    }
}
