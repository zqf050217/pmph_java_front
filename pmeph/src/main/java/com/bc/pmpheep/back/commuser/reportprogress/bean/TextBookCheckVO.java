package com.bc.pmpheep.back.commuser.reportprogress.bean;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;

/**
 * 
 * <pre>
 * 功能描述：书籍审核结果
 * 使用示范：
 * 
 * 
 * @author (作者) nyz
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017-11-30
 * @modify (最后修改时间) 
 * @修改人 ：nyz 
 * @审核人 ：
 * </pre>
 */
@SuppressWarnings("serial")
@Alias("TextBookCheckVO")
public class TextBookCheckVO implements Serializable {
    // 教材id
    private Long    materialId;
    // 教材名称
    private String  materialName;
    // 作家id
    private Long    userId;
    // 是否提交
    private Integer onlineSubmit;
    // 审核进度
    private Integer onlineProgress;
    // 纸质表进度
    private Integer offlineProgress;
    // 书籍名称
    private String  textbookName;
    // 是否已选定第一主编
    private Boolean isChiefChosen;
    // 是否已公布
    private Boolean isPublished;

    /**
     * @return the materialId
     */
    public Long getMaterialId() {
        return materialId;
    }

    /**
     * @param materialId the materialId to set
     */
    public void setMaterialId(Long materialId) {
        this.materialId = materialId;
    }

    /**
     * @return the userId
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * @param userId the userId to set
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * @return the textbookName
     */
    public String getTextbookName() {
        return textbookName;
    }

    /**
     * @param textbookName the textbookName to set
     */
    public void setTextbookName(String textbookName) {
        this.textbookName = textbookName;
    }

    /**
     * @return the isChiefChosen
     */
    public Boolean getIsChiefChosen() {
        return isChiefChosen;
    }

    /**
     * @param isChiefChosen the isChiefChosen to set
     */
    public void setIsChiefChosen(Boolean isChiefChosen) {
        this.isChiefChosen = isChiefChosen;
    }

    /**
     * @return the isPublished
     */
    public Boolean getIsPublished() {
        return isPublished;
    }

    /**
     * @param isPublished the isPublished to set
     */
    public void setIsPublished(Boolean isPublished) {
        this.isPublished = isPublished;
    }

    /**
     * @return the onlineProgress
     */
    public Integer getOnlineProgress() {
        return onlineProgress;
    }

    /**
     * @param onlineProgress the onlineProgress to set
     */
    public void setOnlineProgress(Integer onlineProgress) {
        this.onlineProgress = onlineProgress;
    }

    /**
     * @return the offlineProgress
     */
    public Integer getOfflineProgress() {
        return offlineProgress;
    }

    /**
     * @param offlineProgress the offlineProgress to set
     */
    public void setOfflineProgress(Integer offlineProgress) {
        this.offlineProgress = offlineProgress;
    }

    /**
     * @return the onlineSubmit
     */
    public Integer getOnlineSubmit() {
        return onlineSubmit;
    }

    /**
     * @param onlineSubmit the onlineSubmit to set
     */
    public void setOnlineSubmit(Integer onlineSubmit) {
        this.onlineSubmit = onlineSubmit;
    }

    /**
     * @return the materialName
     */
    public String getMaterialName() {
        return materialName;
    }

    /**
     * @param materialName the materialName to set
     */
    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

}
