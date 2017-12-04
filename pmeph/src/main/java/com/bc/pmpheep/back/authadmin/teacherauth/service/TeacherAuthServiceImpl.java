package com.bc.pmpheep.back.authadmin.teacherauth.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.authadmin.teacherauth.dao.TeacherAuthDao;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.controller.bean.ResponseBean;
/**
 * 教师认证服务层实现类
 * @author liudi
 *
 */
@Service("com.bc.pmpheep.back.authadmin.teacherauth.service.TeacherAuthServiceImpl")
public class TeacherAuthServiceImpl implements TeacherAuthService {

	@Autowired
	TeacherAuthDao teacherAuthDao;
	
	@Override
	public List<Map<String, Object>> queryTeacherAuthList(PageParameter<Map<String, Object>> pageParameter) {
		Map<String,Object> paraMap = new HashMap<String,Object>();
		paraMap.put("startNum", pageParameter.getStart());
		paraMap.put("pageSize", pageParameter.getPageSize());
		paraMap.put("queryName", pageParameter.getParameter().get("queryName"));
		paraMap.put("queryStatus", pageParameter.getParameter().get("queryStatus"));
		List<Map<String,Object>> resultList = teacherAuthDao.queryTeacherAuthList(paraMap);
		return resultList;
	}

	@Override
	public int queryTeacherAuthCount(PageParameter<Map<String, Object>> pageParameter) {
		Map<String, Object> paraMap = pageParameter.getParameter();
		paraMap.put("queryName", pageParameter.getParameter().get("queryName"));
		paraMap.put("queryStatus", pageParameter.getParameter().get("queryStatus"));
		Integer count =teacherAuthDao.queryTeacherAuthCount(paraMap);
		Integer maxPageNum = (int) Math.ceil(1.0*count/pageParameter.getPageSize());
		return maxPageNum;
	}

	@Override
	public ResponseBean<Map<String, Object>> statusModify(String id,String status) {
		ResponseBean<Map<String, Object>> rb = new ResponseBean<Map<String, Object>>();
		Map<String, Object> paraMap = new HashMap<String, Object>();
		paraMap.put("id", id);
		paraMap.put("status", status);
		Integer count = teacherAuthDao.statusModify(paraMap);
		
		return rb;
	}
	
}
