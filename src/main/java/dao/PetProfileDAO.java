package dao;

import java.util.List;

import dto.PetProfile;

public interface PetProfileDAO {

	int insertPetProfile(PetProfile petProfile);

	int updatePetProfile(PetProfile petProfile);

	int deletePetProfile(String id);

	PetProfile selectPetProfile(String id);

	List<PetProfile> selectPetProfileList();

}