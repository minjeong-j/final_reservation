package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dto.Dolbom;
import service.DolbomService;

@Controller
@RequestMapping("/dolbom/*")
public class DolbomController {
	@Autowired
	private DolbomService dolbomService;
	
	@RequestMapping(value = "/dolbomView",method = RequestMethod.GET)
	public String dolbomView(/*@RequestParam String userId,*/ Model model) throws Exception {
		model.addAttribute("dolbomList", dolbomService.getDolbomList(null));
		return "minjeong/dolbom";
	}
	
	@RequestMapping(value = "/dolbomView",method = RequestMethod.POST)
	public String add(@ModelAttribute Dolbom dolbom, Model model) throws Exception {
		dolbomService.addDolbom(dolbom);
		return "redirect:/dolbom/dolbomView";
	}
	
	@RequestMapping(value = "/dolbomDetail",method = RequestMethod.GET)
	public String detail(@RequestParam String id, Model model) throws Exception {
		model.addAttribute("petProfile", dolbomService.getDolbom(id));
		return "minjeong/dolbomDetail";
	}	
	
	@RequestMapping(value = "/dolbomWrite",method = RequestMethod.GET)
	public String write() throws Exception {
		return "minjeong/dolbom_write";
	}
	
	@RequestMapping(value = "/dolbomUpdate",method = RequestMethod.GET)
	public String updateDolbom(@RequestParam String id, Model model) throws Exception {
		model.addAttribute("dolbom", dolbomService.getDolbom(id));
		return "minjeong/dolbom_update";
	}
	
	@RequestMapping(value = "/dolbomUpdate",method = RequestMethod.POST)
	public String updateModifyDolbom(@ModelAttribute Dolbom dolbom, Model model) throws Exception {
		dolbomService.modifyDolbom(dolbom);
		return "redirect:/dolbom/detail?id="+dolbom.getId();
	}
	
}
