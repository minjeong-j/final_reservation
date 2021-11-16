package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dto.Member;
import service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login() {
		return "yunha/login";
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String login(@ModelAttribute Member member, HttpSession session) throws Exception {
		memberService.loginAuth(member);
		session.setAttribute("loginMember", memberService.getMember(member.getId()));
		return "index";
	}
	
	@RequestMapping(value = "/agreement",method = RequestMethod.GET)
	public String agreement() {
		return "yunha/agreement";
	}
	
	@RequestMapping(value = "/joinForm",method = RequestMethod.GET)
	public String joinForm() {
		return "yunha/joinForm";
	}
	
	@RequestMapping(value = "/joinForm",method = RequestMethod.POST)
	public String joinForm(@ModelAttribute Member member) throws Exception {
		memberService.addMember(member);
		return "yunha/joinSuccess";
	}
	
	@RequestMapping(value = "/joinSuccess",method = RequestMethod.GET)
	public String joinSucess() {
		return "yunha/joinSuccess";
	}
	
	@RequestMapping(value = "/findId",method = RequestMethod.GET)
	public String findId() {
		return "yunha/findId";
	}
	
	@RequestMapping(value = "/findId",method = RequestMethod.POST)
	public String findId(@RequestParam String name, @RequestParam String email, Model model) throws Exception {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("name", name);
		map.put("email", email);
		model.addAttribute("id", memberService.findId(map));
		return "yunha/findIdResult";
	}
	
	@RequestMapping(value = "/findPw",method = RequestMethod.GET)
	public String findPw() {
		return "yunha/findPw";
	}
	
	@PostMapping("/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		int cnt=memberService.idCheck(id);
		return cnt;
	}
	
	@RequestMapping(value = "/userMyPage",method = RequestMethod.GET)
	public String userMyPage() {
		return "moosung/userMyPage";
	}
	
	@RequestMapping(value = "/userProfile",method = RequestMethod.GET)
	public String userProfile() {
		return "moosung/userProfile";
	}
}
