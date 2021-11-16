package mapper;

import java.util.List;
import java.util.Map;

import dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String id);
	Member selectMember(String id);
	List<Member> selectMemberList();
	String findId(Map<String, Object> map);
}
