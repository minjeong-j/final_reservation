package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.PetProfile;
import mapper.PetProfileMapper;

@Repository
public class PetProfileDAOImpl implements PetProfileDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertPetProfile(PetProfile petProfile) {
		return sqlSession.getMapper(PetProfileMapper.class).insertPetProfile(petProfile);
	}

	@Override
	public int updatePetProfile(PetProfile petProfile) {
		return sqlSession.getMapper(PetProfileMapper.class).updatePetProfile(petProfile);
	}

	@Override
	public int deletePetProfile(String id) {
		return sqlSession.getMapper(PetProfileMapper.class).deletePetProfile(id);
	}

	@Override
	public PetProfile selectPetProfile(String id) {
		return sqlSession.getMapper(PetProfileMapper.class).selectPetProfile(id);
	}

	@Override
	public List<PetProfile> selectPetProfileList() {
		return sqlSession.getMapper(PetProfileMapper.class).selectPetProfileList();
	}

}
