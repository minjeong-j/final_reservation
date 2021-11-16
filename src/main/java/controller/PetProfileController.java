package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dto.PetProfile;
import service.PetProfileService;

@Controller
@RequestMapping("/petProfile/*")
public class PetProfileController {	
	@Autowired
	private PetProfileService petProfileService;
	
	@RequestMapping(value = "/view",method = RequestMethod.GET)
	public String view(Model model) throws Exception{
		model.addAttribute("petProfileList", petProfileService.getPetProfileList());
		return "moosung/petProfile";
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.POST)
	public String add(@ModelAttribute PetProfile petProfile, Model model) throws Exception{
		petProfileService.addPetProfile(petProfile);
		return "redirect:/petProfile/view";
	}
	
	@RequestMapping(value = "/detail",method = RequestMethod.GET)
	public String detail(@RequestParam String id, Model model) throws Exception {
		model.addAttribute("petProfile", petProfileService.getPetProfile(id));
		return "moosung/petProfileDetail";
	}	
	
	@RequestMapping(value = "/form",method = RequestMethod.GET)
	public String form() {
		return "moosung/petProfileForm";
	}
	
	@RequestMapping(value = "/remove")
	public String remove(@RequestParam String id, Model model) throws Exception{
		petProfileService.removePetProfile(id);
		return "redirect:/petProfile/view";
	}
	
	@RequestMapping(value = "/update",method = RequestMethod.GET)
	public String updateView(@RequestParam String id, Model model) throws Exception {
		model.addAttribute("petProfile", petProfileService.getPetProfile(id));
		return "moosung/petProfileUpdate";
	}
	
	@RequestMapping(value = "/update",method = RequestMethod.POST)
	public String updateModify(@ModelAttribute PetProfile petProfile, Model model) throws Exception {
		petProfileService.modifyPetProfile(petProfile);
		return "redirect:/petProfile/detail?id="+petProfile.getId();
	}
}
