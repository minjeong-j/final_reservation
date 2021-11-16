package mapper;

import java.util.List;

import dto.Reservation;

public interface ReservationMapper {
	int insertReservation(Reservation reservation);
	
	int updateReservation(Reservation reservation);
	
	int deleteReservation(String id);
	
	Reservation selectReservation(String id);
	
	List<Reservation> selectUserReservation(String userId);
	
	List<Reservation> selectSitterReservation(String sitterId);
	
	List<Reservation> selectReservationList();	
}
