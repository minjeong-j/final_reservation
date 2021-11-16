package mapper;

import java.util.List;

import dto.Dolbom;

public interface DolbomMapper {
	int insertDolbom(Dolbom dolbom);
	int updateDolbom(Dolbom dolbom);
	Dolbom selectDolbom(String id); 
	List<Dolbom> selectDolbomList(String userId); 
	List<Dolbom> selectSitterDolbomList(String sitterId); 
}
