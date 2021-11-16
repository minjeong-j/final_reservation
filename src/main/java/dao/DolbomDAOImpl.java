package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.Dolbom;
import mapper.DolbomMapper;

@Repository
public class DolbomDAOImpl implements DolbomDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertDolbom(Dolbom dolbom) {
		return sqlSession.getMapper(DolbomMapper.class).insertDolbom(dolbom);
	}

	@Override
	public int updateDolbom(Dolbom dolbom) {
		return sqlSession.getMapper(DolbomMapper.class).updateDolbom(dolbom);
	}

	@Override
	public Dolbom selectDolbom(String id) {
		return sqlSession.getMapper(DolbomMapper.class).selectDolbom(id);
	}

	@Override
	public List<Dolbom> selectDolbomList(String userId) {
		return sqlSession.getMapper(DolbomMapper.class).selectDolbomList(userId);
	}

	@Override
	public List<Dolbom> selectSitterDolbomList(String sitterId) {
		return sqlSession.getMapper(DolbomMapper.class).selectSitterDolbomList(sitterId);
	}
}
