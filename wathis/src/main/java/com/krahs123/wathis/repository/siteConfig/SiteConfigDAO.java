package com.krahs123.wathis.repository.siteConfig;

import java.util.List;
import java.util.Map;

import com.krahs123.wathis.model.SiteConfigVO;

public interface SiteConfigDAO {
	//설정 리스트 
	public List<SiteConfigVO> getSiteConfigList();
	//설정 그룹 검색
	public Map<String,Object> getSiteConfigGroup(String group_id);
	//설정 상세
	public SiteConfigVO getSiteConfigDetail(int id);
	//설정 저장
	public int setSiteConfig(SiteConfigVO svo);
	//설정 수정
	public int updateSiteConfig(SiteConfigVO svo);
	//설정 삭제
	public int deleteSiteConfig(int id);
	//사이트 그룹 리스트
	public List<String> getSiteConfigGroupList();
	//설정 코드 중복 확인
	public int getSiteConfigTitleChk(String group_id,String title);
	//사이트 설정 가져 오기
	public String getSiteConfigContent(String group_id,String title);

}
