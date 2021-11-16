package dao;

import java.util.List;

import dto.Petsitter;

public interface PetsitterDAO {
	int insertPetsitter(Petsitter petsitter);
	int updatePetsitter(Petsitter petsitter);
	int deletePetsitter(String id);
	Petsitter selectPetsitter(String id);
	List<Petsitter> selectPetsitterList();
}
