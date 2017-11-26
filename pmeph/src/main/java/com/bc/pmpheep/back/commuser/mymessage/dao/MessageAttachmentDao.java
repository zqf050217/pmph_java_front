package com.bc.pmpheep.back.commuser.mymessage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bc.pmpheep.back.commuser.mymessage.bean.MessageAttachment;
import com.bc.pmpheep.service.exception.CheckedServiceException;

public interface MessageAttachmentDao {
    /**
     * 查询MessageAttachment集合 通过msgId
     * 
     * @param msgId
     * @return MessageAttachment
     * @throws CheckedServiceException
     */
    List<MessageAttachment> getMessageAttachmentByMsgId(@Param("msgId") String msgId);
}
