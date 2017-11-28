package com.bc.pmpheep.back.commuser.cms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.cms.bean.CmsInfoLettersList;
import com.bc.pmpheep.back.commuser.cms.dao.CmsInfoLettersManagementDao;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.back.util.PageParameterUitl;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * 
 * 功能描述：信息快报业务实现
 * 
 * 
 * 
 * @author (作者) 曾庆峰
 * 
 * @since (该版本支持的JDK版本) ：JDK 1.6或以上
 * @version (版本) 1.0
 * @date (开发日期) 2017年11月27日
 * @modify (最后修改时间)
 * @修改人 ：曾庆峰
 * @审核人 ：
 *
 */
@Service
public class CmsInfoLettersManagementServiceImpl implements CmsInfoLettersManagementService {
	@Autowired
	CmsInfoLettersManagementDao cmsInfoLettersManagementDao;

	@Override
	public PageResult<CmsInfoLettersList> list(PageParameter<CmsInfoLettersList> pageParameter)
			throws CheckedServiceException {
		PageResult<CmsInfoLettersList> pageResult = new PageResult<>();
		Integer total = cmsInfoLettersManagementDao.getCmsInfoLettersListTotal();
		if (total > 0) {
			PageParameterUitl.CopyPageParameter(pageParameter, pageResult);
			pageResult.setRows(cmsInfoLettersManagementDao.list(pageParameter));
			pageResult.setTotal(total);
		}
		return pageResult;
	}
}
