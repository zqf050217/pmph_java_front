package com.bc.pmpheep.general.bean;

/**
 * @Author: SuiXinYang
 * @Description: 用于MongoDB图片存取服务的图片类型枚举
 * @Date: Created in 10:07 2017/11/15
 * @Modified: SuiXinYang
 **/
public enum ImageType {
    /**
     * 社内用户头像
     */
    PMPH_USER_AVATAR("社内用户头像"),
    /**
     * 作家用户头像
     */
    WRITER_USER_AVATAR("作家用户头像"),
    /**
     * 教师资格证
     */
    WRITER_USER_CERT("教师资格证"),
    /**
     * 机构用户委托书
     */
    ORG_USER_PROXY("机构用户委托书"),
    /**
     * 系统消息
     */
    SYS_MESSAGE("系统消息"),
    /**
     * 小组头像
     */
    GROUP_AVATAR("小组头像");

    private final String type;

    private ImageType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
}
