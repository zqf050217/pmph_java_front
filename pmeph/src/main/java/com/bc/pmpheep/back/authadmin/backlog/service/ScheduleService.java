package com.bc.pmpheep.back.authadmin.backlog.service;

import java.util.List;
import java.util.Map;

public interface ScheduleService {
	
	//查询待办事项列表
	List<Map<String,Object>> selectScheduleList(Map<String, Object> paraMap);
	
	//查询机构用户信息
	Map<String, Object> selectOrgUser(Long userId);
	
	//查询列表数据量
	int selectScheduleCount(Map<String, Object> paraMap);
	
}
