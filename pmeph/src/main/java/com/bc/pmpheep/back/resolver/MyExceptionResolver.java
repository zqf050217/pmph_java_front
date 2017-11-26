package com.bc.pmpheep.back.resolver;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * <pre>
 * 功能描述：MyExceptionResolver对Controller异常统一处理
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
public class MyExceptionResolver implements HandlerExceptionResolver {

    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response,
    Object handler, Exception exception) {
        Map<String, Object> resultException = new HashMap<String, Object>();
        resultException.put("exception", exception);
        // 根据不同错误转向不同页面
        if (exception instanceof CheckedServiceException) {// 已知异常
            return new ModelAndView(((CheckedServiceException) exception).getUrl(), resultException);
        } else {
            // 未知异常
            return new ModelAndView("exception/error", resultException);
        }
    }

}
