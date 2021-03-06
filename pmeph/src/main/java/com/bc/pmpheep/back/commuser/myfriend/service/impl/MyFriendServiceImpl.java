package com.bc.pmpheep.back.commuser.myfriend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.myfriend.bean.WriterFriendVO;
import com.bc.pmpheep.back.commuser.myfriend.dao.MyFriendDao;
import com.bc.pmpheep.back.commuser.myfriend.service.MyFriendService;
import com.bc.pmpheep.back.commuser.user.bean.WriterUser;
import com.bc.pmpheep.back.util.ObjectUtil;
import com.bc.pmpheep.service.exception.CheckedExceptionBusiness;
import com.bc.pmpheep.service.exception.CheckedExceptionResult;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * <pre>
 * 功能描述：好友 业务层接口实现类
 * 使用示范：
 * 
 * 
 * @author (作者) nyz
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017-11-29
 * @modify (最后修改时间) 
 * @修改人 ：nyz 
 * @审核人 ：
 * </pre>
 */
@Service
public class MyFriendServiceImpl implements MyFriendService {
    @Autowired
    MyFriendDao myFriendDao;

    @Override
    public List<WriterFriendVO> listMyFriend(WriterUser writerUser) throws Exception {
        Long userId = writerUser.getId();
        if (ObjectUtil.isNull(userId)) {
            throw new CheckedServiceException(CheckedExceptionBusiness.WRITER_FRIEND,
                                              CheckedExceptionResult.NULL_PARAM, "用户Id为空");
        }
        return myFriendDao.listMyFriend(userId);
    }
}
