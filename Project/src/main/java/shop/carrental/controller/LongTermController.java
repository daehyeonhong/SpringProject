package shop.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.service.CarService;
import shop.carrental.service.LongTermService;
import shop.carrental.service.RentalService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/long/*")
public class LongTermController {

	private LongTermService longTermService;
	private RentalService rentalService;
	private CarService carService;

	@GetMapping("/")
	public String basic() {
		log.info("long");
		return "/long/list";
	}

	@GetMapping("/detail")
	public void detail(Long trim_seq, Model model) {
		log.info("detail");

		model.addAttribute("car", longTermService.detail(trim_seq));
		model.addAttribute("branchList", rentalService.listBranch());
	}

	@GetMapping("/guide")
	public void guide() {
		log.info("guide");
	}

	@GetMapping("/information")
	public void information() {
		log.info("information");
	}

	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");

		model.addAttribute("mfgcoList", carService.listMfgco());
		model.addAttribute("segmentList", carService.listSegment());
	}

}