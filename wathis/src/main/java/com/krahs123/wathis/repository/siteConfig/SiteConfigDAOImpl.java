package com.krahs123.wathis.repository.siteConfig;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.SiteConfigVO;

@Repository
public class SiteConfigDAOImpl implements SiteConfigDAO{
	final String namespace ="mappers.SiteConfigMapper";
	@Autowired
	SqlSession sql;
	@Override
	public List<SiteConfigVO> getSiteConfigList() {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getSiteConfigList");
	}
	@Override
	public Map<String, Object> getSiteConfigGroup(String group_id) {
		// TODO Auto-generated method stub
		return sql.selectMap(namespace+".getSiteConfigGroup", group_id,"title");
	}
	@Override
	public SiteConfigVO getSiteConfigDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(namespace+".getSiteConfigDetail",id);
	}
	@Override
	public int setSiteConfig(SiteConfigVO svo) {
		// TODO Auto-generated method stub
		return sql.insert(namespace+".setSiteConfig",svo);
	}
	@Override
	public int updateSiteConfig(SiteConfigVO svo) {
		// TODO Auto-generated method stub
		return sql.update(namespace+".updateSiteConfig",svo);
	}
	@Override
	public int deleteSiteConfig(int id) {
		// TODO Auto-generated method stub
		return sql.delete(namespace+".deleteSiteConfig",id);
	}
	@Override
	public List<String> getSiteConfigGroupList() {
		// TODO Auto-generated method stub
		return sql.selectList(namespace+".getSiteConfigGroupList");
	}
	@Override
	public int getSiteConfigTitleChk(String group_id, String title) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("group_id", group_id);
		map.put("title", title);
		return sql.selectOne(namespace+".getSiteConfigTitleChk",map);
		
	}
	@Override
	public String getSiteConfigContent(String group_id, String title) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("group_id", group_id);
		map.put("title", title);
		return sql.selectOne(namespace+".getSiteConfigContent",map);
	}

}
