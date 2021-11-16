package service;

import java.util.List;
import java.util.Map;

import dto.Member;
import exception.LoginAuthFailException;

public interface MemberService {
	void addMember(Member member) throws Exception;
	void modifyMember(Member member) throws Exception;
	void removeMember(String id) throws Exception;
	Member getMember(String id) throws Exception;
	List<Member> getMemberList() throws Exception;
	void loginAuth(Member member) throws LoginAuthFailException;
	public int idCheck(String id);
	public String findId(String email);
	String findId(Map<String, Object> map) throws Exception;
}
