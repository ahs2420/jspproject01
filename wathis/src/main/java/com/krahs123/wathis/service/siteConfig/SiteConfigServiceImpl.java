package com.krahs123.wathis.service.siteConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.repository.siteConfig.SiteConfigDAO;

@Service
public class SiteConfigServiceImpl implements SiteConfigService{
	@Autowired
	SiteConfigDAO siteConfigDAO;
}
