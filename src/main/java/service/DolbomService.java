package service;

import java.util.List;

import dto.Dolbom;

public interface DolbomService {
	void addDolbom(Dolbom dolbom) throws Exception;
	void modifyDolbom(Dolbom dolbom) throws Exception;
	Dolbom getDolbom(String id) throws Exception;
	List<Dolbom> getDolbomList(String userId) throws Exception;
	List<Dolbom> getSitterDolbomList(String sitterId) throws Exception;
}
