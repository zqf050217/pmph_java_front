package com.bc.pmpheep.back.commuser.cms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.cms.bean.CmsNoticeList;
import com.bc.pmpheep.back.commuser.cms.dao.CmsNoticeManagementDao;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.back.util.PageParameterUitl;
import com.bc.pmpheep.service.exception.CheckedServiceException;

/**
 * 
 * 
 * 功能描述：遴选公告业务实现
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
public class CmsNoticeManagementServiceImpl implements CmsNoticeManagementService {
	@Autowired
	CmsNoticeManagementDao cmsNoticeManagementDao;

	@Override
	public PageResult<CmsNoticeList> list(PageParameter<CmsNoticeList> pageParameter) throws CheckedServiceException {
		PageResult<CmsNoticeList> pageResult = new PageResult<>();
		Integer total = cmsNoticeManagementDao.getCmsNoticeListTotal();
		if (total > 0) {
			PageParameterUitl.CopyPageParameter(pageParameter, pageResult);
			pageResult.setRows(cmsNoticeManagementDao.list(pageParameter));
		}
		pageResult.setTotal(total);

		return pageResult;
	}

}
