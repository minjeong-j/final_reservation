package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.PetsitterDAO;
import dto.Petsitter;

@Service
public class PetsitterServiceImpl implements PetsitterService {
	@Autowired
	private PetsitterDAO petsitterDAO;
	
	@Transactional
	@Override
	public void addPetsitter(Petsitter petsitter) {
		petsitterDAO.insertPetsitter(petsitter);
	}
	
	@Transactional
	@Override
	public void modifyPetsitter(Petsitter petsitter) {
		petsitterDAO.updatePetsitter(petsitter);
	}
	
	@Transactional
	@Override
	public void removePetsitter(String id) {
		petsitterDAO.deletePetsitter(id);
	}
	
	@Override
	public Petsitter getPetsitter(String id) {
		Petsitter petsitter=petsitterDAO.selectPetsitter(id);
		
		return petsitter;
	}
	
	@Override
	public List<Petsitter> getPetsitterList() {
		return petsitterDAO.selectPetsitterList();
	}
}
