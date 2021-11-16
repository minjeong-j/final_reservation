package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value = "/index",method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/userMyPage",method = RequestMethod.GET)
	public String userMyPage() {
		return "moosung/userMyPage";
	}
	
	@RequestMapping(value = "/userProfile",method = RequestMethod.GET)
	public String userProfile() {
		return "moosung/userProfile";
	}
	
	@RequestMapping(value = "/dolbom",method = RequestMethod.GET)
	public String dolbom() {
		return "minjeong/dolbom";
	}
	
	@RequestMapping(value = "/notice",method = RequestMethod.GET)
	public String notice() {
		return "minjeong/notice";
	}
	
	@RequestMapping(value = "/review",method = RequestMethod.GET)
	public String review() {
		return "minjeong/review";
	}
	
	@RequestMapping(value = "/qna",method = RequestMethod.GET)
	public String qna() {
		return "minjeong/qna";
	}
}
