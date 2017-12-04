package com.bc.pmpheep.back.authadmin.message.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.authadmin.message.dao.OrgMessageDao;

@Service("com.bc.pmpheep.back.authadmin.message.service.MessageServiceImpl")
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	OrgMessageDao orgMessageDao;

	//申请信息列表
	@Override
	public List<Map<String, Object>> selectApplyMessage(Long userId) {
		List<Map<String, Object>> list = orgMessageDao.selectApplyMessage(userId);
		return list;
	}
	
	
	
}
