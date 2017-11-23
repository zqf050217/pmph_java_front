package com.bc.pmpheep.back.template.service;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import java.util.Map;


/**
 * @Author: SuiXinYang
 * @Description:
 * @Date: Created in 14:35 2017/11/16
 * @Modified: SuiXinYang
 **/
@Service("com.bc.pmpheep.back.template.service.TemplateService")
public class TemplateService{

    private static String tplFolder = "templates/";
    @Autowired
    private VelocityEngine velocityEngine;

    public String mergeTemplateIntoString(String vm, Map<String, Object> map) {
        String tpl = tplFolder + vm;
        return VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, tpl,map);
    }

}
