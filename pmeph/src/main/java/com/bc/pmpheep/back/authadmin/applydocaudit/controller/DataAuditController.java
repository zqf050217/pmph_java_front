package com.bc.pmpheep.back.authadmin.applydocaudit.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.authadmin.applydocaudit.service.DataAuditService;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.controller.bean.ResponseBean;

/**
 * 
 * <pre>
 * 功能描述：CMS 控制器
 * 使用示范：
 * 
 * 
 * @author (作者) nyz
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017-10-31
 * @modify (最后修改时间) 
 * @修改人 ：nyz 
 * @审核人 ：
 * </pre>
 */
@Controller
@RequestMapping(value = "/cms")
@SuppressWarnings({ "rawtypes", "unchecked" })
public class DataAuditController {
    @Autowired
    @Qualifier("com.bc.pmpheep.back.authadmin.applydocaudit.service.DataAuditServiceImpl")
    DataAuditService dataAuditService;

    /**
     * 
     * <pre>
     * 功能描述：分页查询条件查询资料审核列表
     * 使用示范：
     *
     * @param pageNumber 当前页
     * @param pageSize 页面数据条数
     * @param  ResponseBean
     * @param sessionId
     * @return 分页数据集
     * </pre>
     */
    @RequestMapping(value = "/findDataAudit", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView findDataAudit(
    @RequestParam(name = "pageNumber", defaultValue = "1") Integer pageNumber,
    @RequestParam(name = "pageSize",defaultValue = "10") Integer pageSize, Map<String,Object> map) {
    	ModelAndView mv=new ModelAndView();
        PageParameter<Map<String,Object>> pageParameter = new PageParameter<Map<String,Object>>(pageNumber, pageSize, map);
        PageResult<Map<String, Object>> pr=	dataAuditService.findDataAudit(pageParameter, "");
        mv.addObject("pr", pr);
        mv.setViewName("authadmin/applydocaudit/dataaudit");
        return mv;
    }
    
    
}
