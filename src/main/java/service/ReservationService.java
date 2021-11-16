package service;

import java.util.List;

import dto.Reservation;

public interface ReservationService {
	void addReservation(Reservation reservation) throws Exception;

	void modifyReservation(Reservation reservation) throws Exception;
	
	void removeReservation(String id) throws Exception;

	Reservation getReservation(String id) throws Exception;

	List<Reservation> getUserReservation(String userId) throws Exception;

	List<Reservation> getSitterReservation(String sitterId) throws Exception;
	
	List<Reservation> getReservationList();
}
