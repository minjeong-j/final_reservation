package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import dto.Petsitter;

public interface PetsitterMapper {
	int insertPetsitter(Petsitter petsitter);
	int updatePetsitter(Petsitter petsitter);
	int deletePetsitter(String id);
	Petsitter selectPetsitter(String id);
	List<Petsitter> selectPetsitterList();
}
