package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.Reservation;
import mapper.ReservationMapper;

@Repository
public class ReservationDAOImpl implements ReservationDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertReservation(Reservation reservation) {
		return sqlSession.getMapper(ReservationMapper.class).insertReservation(reservation); 
	}

	@Override
	public int updateReservation(Reservation reservation) {
		return sqlSession.getMapper(ReservationMapper.class).updateReservation(reservation);
	}

	@Override
	public int deleteReservation(String id) {
		return sqlSession.getMapper(ReservationMapper.class).deleteReservation(id);
	}

	@Override
	public Reservation selectReservation(String id) {
		return sqlSession.getMapper(ReservationMapper.class).selectReservation(id);
	}

	@Override
	public List<Reservation> selectUserReservation(String userId) {
		return sqlSession.getMapper(ReservationMapper.class).selectUserReservation(userId);
	}

	@Override
	public List<Reservation> selectSitterReservation(String sitterId) {
		return sqlSession.getMapper(ReservationMapper.class).selectSitterReservation(sitterId);
	}
	
	@Override
	public List<Reservation> selectReservationList() {
		return sqlSession.getMapper(ReservationMapper.class).selectReservationList();
	}
	
}
