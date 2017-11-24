package com.bc.pmpheep.back.commuser.mymessage.service;

import com.bc.pmpheep.back.commuser.mymessage.bean.MyMessageVO;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.service.exception.CheckedServiceException;

public interface MyMessageService {
	/**
	 * 
	 * 
	 * 功能描述：获取我的消息列表
	 * 
	 * @param pageParameter
	 *            分页参数,title 消息标题,isRead 是否已读,userId 用户id,userType 用户类型
	 * @return
	 * @throws CheckedServiceException
	 * 
	 */
	PageResult<MyMessageVO> listMyMessage(PageParameter<MyMessageVO> pageParameter) throws CheckedServiceException;

	/**
	 * 
	 * 
	 * 功能描述：小图标获取一部分系统未读消息
	 * 
	 * @param pageParameter
	 *            分页参数,isRead 是否已读
	 * @return
	 * @throws CheckedServiceException
	 * 
	 */
	PageResult<MyMessageVO> listMyMessageOfIcon(PageParameter<MyMessageVO> pageParameter)
			throws CheckedServiceException;

	/**
	 * 
	 * 
	 * 功能描述：获取消息详情
	 * 
	 * @param id
	 *            消息id
	 * @return
	 * @throws CheckedServiceException
	 * 
	 */
	MyMessageVO updateMyMessageDetail(Long id) throws CheckedServiceException;

	/**
	 * 
	 * 
	 * 功能描述：逻辑删除我的消息
	 * 
	 * @param ids
	 *            需要删除的消息id
	 * @return
	 * @throws CheckedServiceException
	 * 
	 */
	Integer updateMyMessage(Long[] ids) throws CheckedServiceException;
}
