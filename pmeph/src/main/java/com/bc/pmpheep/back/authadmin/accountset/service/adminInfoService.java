package com.bc.pmpheep.back.authadmin.accountset.service;

import java.util.List;
import java.util.Map;

public interface adminInfoService {
	
	 //查询机构用户资料信息
	public Map<String,Object> selectAdminInfo(Long userId);
	
	//修改机构用户资料信息
	public int changeAdminInfo(Long userId);
	
}
