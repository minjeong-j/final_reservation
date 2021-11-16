package service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.MemberDAO;
import dto.Member;
import exception.LoginAuthFailException;
import exception.MemberNotFoundException;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Transactional
	@Override
	public void addMember(Member member) {
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		
		memberDAO.insertMember(member);
	}
	
	@Transactional
	@Override
	public void modifyMember(Member member) throws MemberNotFoundException {
		if(memberDAO.selectMember(member.getId())==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}
		
		String password=member.getPassword();
		if(password!=null && !password.equals("")) {
			member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		}
		
		memberDAO.updateMember(member);
	}
	
	@Transactional
	@Override
	public void removeMember(String id) throws MemberNotFoundException {
		if(memberDAO.selectMember(id)==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}
		
		memberDAO.deleteMember(id);
	}
	
	@Override
	public Member getMember(String id) throws MemberNotFoundException {
		Member member=memberDAO.selectMember(id);
		if(member==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}
		return member;
	}
	
	@Override
	public List<Member> getMemberList() {
		return memberDAO.selectMemberList();
	}
	
	@Override
	public void loginAuth(Member member) throws LoginAuthFailException {
		Member authMember=memberDAO.selectMember(member.getId());
		if(authMember==null) {
			throw new LoginAuthFailException("아이디의 회원정보가 존재하지 않습니다.",member.getId());
		}
		if(!BCrypt.checkpw(member.getPassword(), authMember.getPassword())) {
			throw new LoginAuthFailException("아이디가 없거나 비밀번호가 맞지 않습니다.",member.getId());
		}
	}
	
	@Override
	public int idCheck(String id) {
		int cnt = memberDAO.idCheck(id);
		return cnt;
	}
	
	@Inject
	private MemberDAO memberDao;

	@Override
	public String findId(Map<String, Object> map) throws MemberNotFoundException, Exception {
		String id = memberDao.findId(map);
		
		if(id==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		} else {
			return id;
		}
	}

	@Override
	public String findId(String email) {
		// TODO Auto-generated method stub
		return null;
	}
}
