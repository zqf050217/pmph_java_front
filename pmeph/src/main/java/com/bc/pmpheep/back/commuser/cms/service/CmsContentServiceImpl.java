package com.bc.pmpheep.back.commuser.cms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bc.pmpheep.back.commuser.cms.bean.CmsContent;
import com.bc.pmpheep.back.commuser.cms.bean.CmsNoticeList;
import com.bc.pmpheep.back.commuser.cms.dao.CmsContentDao;
import com.bc.pmpheep.back.plugin.PageParameter;
import com.bc.pmpheep.back.plugin.PageResult;
import com.bc.pmpheep.back.util.CollectionUtil;
import com.bc.pmpheep.back.util.PageParameterUitl;
/**
 * 	CmsContentService 实现
 * @author Mr
 *
 */
@Service
public class CmsContentServiceImpl implements CmsContentService{
	
	@Autowired
	private CmsContentDao cmsContentDao;

	@Override
	public PageResult<CmsContent> list(PageParameter<CmsContent> pageParameter) {
		PageResult<CmsContent> pageResult = new PageResult<>();
		Integer total = cmsContentDao.getCmsContentListTotal();
		if (total > 0) {
			PageParameterUitl.CopyPageParameter(pageParameter, pageResult);
			pageResult.setRows(cmsContentDao.list(pageParameter));
		}
		pageResult.setTotal(total);
		return pageResult;
	}

}
