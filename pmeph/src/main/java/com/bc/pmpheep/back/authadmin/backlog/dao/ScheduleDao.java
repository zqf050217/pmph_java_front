package com.bc.pmpheep.back.authadmin.backlog.dao;

import java.util.List;
import java.util.Map;

public interface ScheduleDao {
	
	//查询待办事项
	List<Map<String,Object>> selectScheduleList(Map<String, Object> paraMap);
	
	//查询机构用户信息
	Map<String, Object> selectOrgUser(Long userId);
	
	//查询待办数据条数
	int selectScheduleCount(Map<String, Object> paraMap);


}
