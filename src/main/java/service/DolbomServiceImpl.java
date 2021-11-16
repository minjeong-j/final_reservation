package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.DolbomDAO;
import dto.Dolbom;

@Service
public class DolbomServiceImpl implements DolbomService {
	@Autowired
	private DolbomDAO dolbomDAO;
	
	@Transactional
	@Override
	public void addDolbom(Dolbom dolbom) throws Exception {
		dolbomDAO.insertDolbom(dolbom);
	}
	
	@Transactional
	@Override
	public void modifyDolbom(Dolbom dolbom) throws Exception {
		dolbomDAO.updateDolbom(dolbom);
	}

	@Override
	public Dolbom getDolbom(String id) throws Exception {
		return dolbomDAO.selectDolbom(id);
	}

	@Override
	public List<Dolbom> getDolbomList(String userId) throws Exception {
		return dolbomDAO.selectDolbomList(userId);
	}

	@Override
	public List<Dolbom> getSitterDolbomList(String sitterId) throws Exception {
		return dolbomDAO.selectSitterDolbomList(sitterId);
	}
	
}
