package com.krahs123.wathis.repository.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.MakerInfoVO;

@Repository
public class MarkerInfoDAOImpl implements MarkerInfoDAO{
	
	final String NAMESPACE = "mappers.MarkerInfoMapper";
	
	@Autowired	SqlSession sql;
	
	@Override
	public int setMaker(MakerInfoVO mfvo) {
		return sql.insert(NAMESPACE+ ".setMaker", mfvo);
	}

	@Override
	public MakerInfoVO getMarkerList(int id) {
	
		return sql.selectOne(NAMESPACE + ".getMarkerList", id);
	}

	@Override
	public int updateMaker(MakerInfoVO mfvo) {

		return sql.update(NAMESPACE+".updateMaker", mfvo);
	}

	@Override
	public int getMakerID(int audit_id) {
		int result = -1;
		try {
			result = sql.selectOne(NAMESPACE + ".getMakerID",audit_id);
		} catch (Exception e) {
			result = -1;
		}
		return result;
	}

	@Override
	public MakerInfoVO getMakerDetail(int id) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE+".getMakerDetail", id);
	}

	@Override
	public MakerInfoVO getMakerDetailAudit(int audit_id) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE+".getMakerDetailAudit", audit_id);
	}




}
