package com.bc.pmpheep.back.template.controller;

import com.bc.pmpheep.back.template.service.TemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: SuiXinYang
 * @Description:
 * @Date: Created in 14:42 2017/11/16
 * @Modified: SuiXinYang
 **/
@Controller
@RequestMapping(value = "template")
public class templateTestController {
    @Autowired
    @Qualifier("com.bc.pmpheep.back.template.service.TemplateService")
    private TemplateService templateService;

    @RequestMapping(value = "test",method = RequestMethod.GET)
    @ResponseBody
    public void testMergeTemplateIntoString(){
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("name", "张三");
        map.put("content", "This is content!!!");
        map.put("img", "http://image.pmph.com/imageServer/image/5655e2850cf2b7b6d2b0e583.jpg");

        String vm = "test.vm";

        String html = templateService.mergeTemplateIntoString(vm, map);
        System.out.println(html);
    }
}
