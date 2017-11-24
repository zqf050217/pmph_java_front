package com.bc.pmpheep.back.commuser.mymessage.service;

import java.util.List;

import com.bc.pmpheep.back.commuser.mymessage.bean.MessageAttachment;
import com.bc.pmpheep.service.exception.CheckedServiceException;

public interface MessageAttachmentService {
	/**
	 * 查询MessageAttachment集合 通过msgId
	 * 
	 * @param msgId
	 * @return MessageAttachment
	 * @throws CheckedServiceException
	 */
	List<MessageAttachment> getMessageAttachmentByMsgId(String msgId) throws CheckedServiceException;
}
