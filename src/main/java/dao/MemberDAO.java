package dao;

import java.util.List;
import java.util.Map;

import dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String id);
	Member selectMember(String id);
	List<Member> selectMemberList();
	int idCheck(String id);
	String findId(Map<String, Object> map);
}