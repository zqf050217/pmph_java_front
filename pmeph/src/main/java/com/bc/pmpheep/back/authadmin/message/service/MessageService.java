package com.bc.pmpheep.back.authadmin.message.service;

import java.util.List;
import java.util.Map;

public interface MessageService {
	
	//申请信息列表
	List<Map<String, Object>> selectApplyMessage(Long userId);

}
