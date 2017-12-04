package com.bc.pmpheep.back.authadmin.accountset.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import com.bc.pmpheep.back.authadmin.accountset.dao.adminInfoDao;

public class adminInfoImpl implements adminInfoService {
	
	@Autowired
	adminInfoDao adminInfoDao;

	@Override
	public Map<String, Object> selectAdminInfo(Long userId) {
		Map<String,Object> map =adminInfoDao.selectAdminInfo(userId);
		return map;
	}

	@Override
	public int changeAdminInfo(Long userId) {
		int adminInfo=adminInfoDao.changeAdminInfo(userId);
		return 0;
	}




}
