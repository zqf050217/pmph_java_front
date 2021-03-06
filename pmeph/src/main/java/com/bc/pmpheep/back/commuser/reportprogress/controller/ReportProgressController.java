package com.bc.pmpheep.back.commuser.reportprogress.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.back.common.controller.BaseController;
import com.bc.pmpheep.back.commuser.reportprogress.bean.TextBookCheckVO;
import com.bc.pmpheep.back.commuser.reportprogress.service.ReportProgressService;
import com.bc.pmpheep.back.commuser.user.bean.WriterUser;
import com.bc.pmpheep.back.util.Const;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * <pre>
 * 功能描述：申报进度 控制器
 * 使用示范：
 * 
 * 
 * @author (作者) nyz
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017-11-30
 * @modify (最后修改时间) 
 * @修改人 ：nyz 
 * @审核人 ：
 * </pre>
 */
@Controller
@RequestMapping(value = "/progress")
public class ReportProgressController extends BaseController {

    @Autowired
    ReportProgressService reportProgressService;

    /**
     * 
     * <pre>
     * 功能描述：申报教材-申报进度
     * 使用示范：
     *
     * @param materialId 教材ID
     * @return 
     * @throws Exception
     * </pre>
     */
    @RequestMapping(value = "/listReportProgress", method = RequestMethod.GET)
    public ModelAndView listReportProgress(@RequestParam("materialId") Long materialId)
    throws Exception {
        ModelAndView model = this.getModelAndView();
        WriterUser writerUser =
        (WriterUser) this.getRequest().getSession().getAttribute(Const.SESSION_WRITER_USER);
        String pageUrl = "";
        try {
            Long userId = writerUser.getId();
            // 申报进度
            TextBookCheckVO progress =
            reportProgressService.getMaterialProgress(userId, materialId);
            // 书籍审核结果
            List<TextBookCheckVO> textBookChecks =
            reportProgressService.getTextBookCheckResult(userId, materialId);
            model.addObject("progress", progress);
            model.addObject("textBookCheck", textBookChecks);
            model.setViewName(pageUrl);
        } catch (CheckedServiceException e) {
            throw new CheckedServiceException(e.getBusiness(), e.getResult(), e.getMessage(),
                                              pageUrl);
        }
        return model;
    }
}
