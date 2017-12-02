package com.bc.pmpheep.back.commuser.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.bc.pmpheep.back.commuser.group.bean.GroupList;
import com.bc.pmpheep.back.plugin.PageParameter;

/**
 * PmphGroup 实体类数据访问层接口
 * 
 * @author mryang
 */
@Repository
public interface GroupDao {
	/**
	 * 
	 * 
	 * 功能描述：前台查询小组列表
	 *
	 * @param start
	 *            起始条数
	 * @param pageSize
	 *            当页条数
	 * @param id
	 *            用户id
	 * @return
	 *
	 */
	GroupList list(@Param("start") Integer start, @Param("pageSize") Integer pageSize, @Param("id") Long id);

	/**
	 * 
	 * 
	 * 功能描述：前台查询该用户的小组总数
	 *
	 * @param id
	 *            用户id
	 * 
	 * @return
	 *
	 */
	Integer getTotal(@Param("id") Long id);

}
