package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.PetProfileDAO;
import dto.PetProfile;

@Service
public class PetProfileServiceImpl implements PetProfileService{
	@Autowired
	private PetProfileDAO petProfileDAO;
	
	@Transactional
	@Override
	public void addPetProfile(PetProfile petProfile) throws Exception {
		petProfileDAO.insertPetProfile(petProfile);		
	}
	
	@Transactional
	@Override
	public void modifyPetProfile(PetProfile petProfile) throws Exception {
		petProfileDAO.updatePetProfile(petProfile);		
	}
	
	@Transactional
	@Override
	public void removePetProfile(String id) throws Exception {
		petProfileDAO.deletePetProfile(id);		
	}

	@Override
	public PetProfile getPetProfile(String id) throws Exception {
		return petProfileDAO.selectPetProfile(id);
	}

	@Override
	public List<PetProfile> getPetProfileList() throws Exception {
		return petProfileDAO.selectPetProfileList();
	}	
}
