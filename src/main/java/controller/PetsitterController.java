package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dto.Petsitter;
import service.PetsitterService;

@Controller
@RequestMapping("/petsitter")
public class PetsitterController {
	@Autowired PetsitterService petsitterService;
	
	@RequestMapping(value = "/sitterForm", method = RequestMethod.GET)
	public String sitterForm() {
		return "yunha/sitterForm";
	}
	
	@RequestMapping(value = "/sitterForm", method = RequestMethod.POST)
	public String sitterForm(@ModelAttribute Petsitter petsitter) throws Exception {
		petsitterService.addPetsitter(petsitter);
		return "yunha/sitterForm";
	}
	
	@RequestMapping(value = "/sitterFormResult", method = RequestMethod.GET)
	public String sitterFormResult() {
		return "yunha/sitterFormResult";
	}
	
	@RequestMapping(value = "/sitterMypage", method = RequestMethod.GET)
	public String sitterMypage() {
		return "yunha/sitterMypage";
	}
}
