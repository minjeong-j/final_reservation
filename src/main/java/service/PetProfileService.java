package service;

import java.util.List;

import dto.PetProfile;

public interface PetProfileService {
	void addPetProfile(PetProfile petProfile) throws Exception;
	void modifyPetProfile(PetProfile petProfile) throws Exception;
	void removePetProfile(String id) throws Exception;
	PetProfile getPetProfile(String id) throws Exception;
	List<PetProfile> getPetProfileList() throws Exception;
}
