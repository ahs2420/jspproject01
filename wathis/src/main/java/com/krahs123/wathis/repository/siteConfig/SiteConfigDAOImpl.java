package com.krahs123.wathis.repository.siteConfig;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SiteConfigDAOImpl implements SiteConfigDAO{
	final String namespace ="mappers.SiteConfigMapper";
	@Autowired
	SqlSession sql;

}
