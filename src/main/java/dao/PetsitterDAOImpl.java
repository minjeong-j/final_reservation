package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.Petsitter;
import mapper.PetsitterMapper;

@Repository
public class PetsitterDAOImpl implements PetsitterDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertPetsitter(Petsitter petsitter) {
		return sqlSession.getMapper(PetsitterMapper.class).insertPetsitter(petsitter);
	}
	
	@Override
	public int updatePetsitter(Petsitter petsitter) {
		return sqlSession.getMapper(PetsitterMapper.class).updatePetsitter(petsitter);
	}
	
	@Override
	public int deletePetsitter(String id) {
		return sqlSession.getMapper(PetsitterMapper.class).deletePetsitter(id);
	}
	
	@Override
	public Petsitter selectPetsitter(String id) {
		return sqlSession.getMapper(PetsitterMapper.class).selectPetsitter(id);
	}
	
	@Override
	public List<Petsitter> selectPetsitterList() {
		return sqlSession.getMapper(PetsitterMapper.class).selectPetsitterList();
	}
}
