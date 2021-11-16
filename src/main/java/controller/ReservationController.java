package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dto.Petsitter;
import dto.Reservation;
import service.PetsitterService;
import service.PetsitterServiceImpl;
import service.ReservationService;

@Controller
@RequestMapping("/reservation/*")
public class ReservationController {
	@Autowired
	private ReservationService reservationService;
	/*@Autowired
	private PetsitterService petSitterService;*/
	
	@RequestMapping(value = "/form",method = RequestMethod.GET)
	public String form(/*@ModelAttribute Petsitter petSitter, Model model*/) {
		//model.addAttribute("petSitterList", petSitterService.getPetsitterList());
		return "moosung/reservationForm";
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.GET)
	public String view(Model model) {
		model.addAttribute("reservationList",reservationService.getReservationList());
		return "moosung/reservation";
	}
	
	@RequestMapping(value = "/view",method = RequestMethod.POST)
	public String view(@ModelAttribute Reservation reservation, Model model) throws Exception{
		reservationService.addReservation(reservation);
		return "redirect:/reservation/view";
	}
	
	@RequestMapping(value = "/detail",method = RequestMethod.GET)
	public String detail(@RequestParam String id, Model model) throws Exception{
		model.addAttribute("reservation", reservationService.getReservation(id));
		return "moosung/reservationDetail";
	}
	
	@RequestMapping(value = "/remove")
	public String remove(@RequestParam String id, Model model) throws Exception{
		reservationService.removeReservation(id);
		return "redirect:/reservation/view";
	}
}
