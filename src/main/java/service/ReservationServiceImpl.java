package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ReservationDAO;
import dto.Reservation;

@Service
public class ReservationServiceImpl implements ReservationService{
	@Autowired
	private ReservationDAO reservationDAO;
	
	@Transactional
	@Override
	public void addReservation(Reservation reservation) throws Exception {
		reservationDAO.insertReservation(reservation);		
	}
	
	@Transactional
	@Override
	public void modifyReservation(Reservation reservation) throws Exception {
		reservationDAO.updateReservation(reservation);		
	}
	
	@Transactional
	@Override
	public void removeReservation(String id) throws Exception {
		reservationDAO.deleteReservation(id);		
	}

	@Override
	public Reservation getReservation(String id) throws Exception {
		return reservationDAO.selectReservation(id);
	}

	@Override
	public List<Reservation> getUserReservation(String userId) throws Exception {
		return reservationDAO.selectUserReservation(userId);
	}

	@Override
	public List<Reservation> getSitterReservation(String sitterId) throws Exception {
		return reservationDAO.selectSitterReservation(sitterId);
	}

	@Override
	public List<Reservation> getReservationList() {
		return reservationDAO.selectReservationList();
	}
	
}
