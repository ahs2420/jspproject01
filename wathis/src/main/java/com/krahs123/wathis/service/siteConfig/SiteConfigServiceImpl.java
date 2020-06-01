package com.krahs123.wathis.service.siteConfig;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.SiteConfigVO;
import com.krahs123.wathis.repository.siteConfig.SiteConfigDAO;

@Service
public class SiteConfigServiceImpl implements SiteConfigService{
	@Autowired
	SiteConfigDAO siteConfigDAO;

	@Override
	public List<SiteConfigVO> getSiteConfigList() {
		// TODO Auto-generated method stub
		return siteConfigDAO.getSiteConfigList();
	}

	@Override
	public Map<String, Object> getSiteConfigGroup(String group_id) {
		// TODO Auto-generated method stub
		return siteConfigDAO.getSiteConfigGroup(group_id);
	}

	@Override
	public SiteConfigVO getSiteConfigDetail(int id) {
		// TODO Auto-generated method stub
		return siteConfigDAO.getSiteConfigDetail(id);
	}

	@Override
	public int setSiteConfig(SiteConfigVO svo) {
		// TODO Auto-generated method stub
		return siteConfigDAO.setSiteConfig(svo);
	}

	@Override
	public int updateSiteConfig(SiteConfigVO svo) {
		// TODO Auto-generated method stub
		return siteConfigDAO.updateSiteConfig(svo);
	}

	@Override
	public int deleteSiteConfig(int id) {
		// TODO Auto-generated method stub
		return siteConfigDAO.deleteSiteConfig(id);
	}

	@Override
	public List<String> getSiteConfigGroupList() {
		// TODO Auto-generated method stub
		return siteConfigDAO.getSiteConfigGroupList();
	}

	@Override
	public int getSiteConfigTitleChk(String group_id, String title) {
		// TODO Auto-generated method stub
		return siteConfigDAO.getSiteConfigTitleChk(group_id, title);
	}
}
