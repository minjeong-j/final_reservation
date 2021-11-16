package service;

import java.util.List;

import dto.Petsitter;

public interface PetsitterService {
	void addPetsitter(Petsitter petsitter);
	void modifyPetsitter(Petsitter petsitter);
	void removePetsitter(String id);
	Petsitter getPetsitter(String id);
	List<Petsitter> getPetsitterList();
}
