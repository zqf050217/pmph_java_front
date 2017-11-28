package com.bc.pmpheep.back.commuser.myfriend.service;

import java.util.List;
import java.util.Map;

/**
 * Created by cyx  on 2017/11/21
 */
public interface MyFriendService {

    /**
     * 获取我的好友列表信息
     * @param userId
     * @return
     */
    public List<Map<String,Object>> getMyFriends(String userId);



}
