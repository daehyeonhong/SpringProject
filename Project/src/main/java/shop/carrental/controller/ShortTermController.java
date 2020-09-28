package shop.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;
import shop.carrental.domain.ShortCarVO;
import shop.carrental.service.CarService;
import shop.carrental.service.ShortTermService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/short/*")
public class ShortTermController {

	private ShortTermService shortTermService;
	private CarService carService;

	@GetMapping("/")
	public String basic() {
		log.info("short");
		return "/short/list";
	}

	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		shortTermService.list(model);
	}

	/* shortTerm_inland */
	@GetMapping("/shortTerm_inland")
	public void shortTerm(ReserveVO vo, Model model) {

		log.info("shortTerm");
		model.addAttribute("result", shortTermService.getReservationInfo(vo));
	}

	@PostMapping("/shortTerm_inland")
	public String shortTerm(ReserveVO vo, RedirectAttributes rttr) {

		log.info("shortTerm_inland: " + vo);
		shortTermService.shortTerm(vo);
		rttr.addAttribute("result", vo.getReserve_seq());
		return "redirect:/short/detail";
	}

	/* shortTerm_jeju */
	@GetMapping("/shortTerm_jeju")
	public void shortTerm_j(ReserveVO vo, Model model) {

		log.info("shortTerm_j");
		model.addAttribute("result", shortTermService.getReservationInfo(vo));
	}

	@PostMapping("/shortTerm_j")
	public String shortTerm_j(ReserveVO vo, RedirectAttributes rttr) {

		log.info("shortTerm_jeju: " + vo);
		shortTermService.shortTerm_j(vo);
		rttr.addAttribute("result", vo.getReserve_seq());
		return "redirect:/short/detail";
	}

	/* detail */
	@GetMapping("/detail")
	public void shortTerm_detailGet(Long sc_seq, Model model) {
		ShortCarVO shortCar = carService.getDetailCar(sc_seq);
		model.addAttribute("ReservationInfo", shortCar);
		log.info("detail");
	}

	/*
	 * @PostMapping("/detail") public String shortTerm_detailPost(Long sc_seq,
	 * RedirectAttributes rttr) {
	 * 
	 * log.info("detail: " + sc_seq); carService.getDetailCar(sc_seq);
	 * rttr.addAttribute("result", sc_seq.getTrim_seq()); return
	 * "redirect:/short/shortTerm_payment2"; }
	 */

	/* shortTerm_payment2 */
	@GetMapping("/shortTerm_payment2")
	public void shortTerm_payment(ReserveVO vo, Model model) {
		model.addAttribute("ReservationInfo", shortTermService.getReservationInfo(vo));
		log.info("reservation");
	}

	@PostMapping("/shortTerm_payment2")
	public String stReserPost(ReserveDTO dto, RedirectAttributes rttr) {
		log.info("reservation");

		shortTermService.registerReservation(dto);

		rttr.addAttribute("seq", dto.getReserve_seq());
		return "redirect:/short/shortTerm_payment_completed";
	}

	/* shortTerm_payment_completed */
	@GetMapping("/shortTerm_payment_completed")
	public void shortTerm_completed(ReserveVO vo, Model model) {
		model.addAttribute("ReservationInfo", shortTermService.getReservationInfo(vo));
		log.info("shortTerm_payment_completed");
	}

	@PostMapping("/shortTerm_payment_completed")
	public String shortTerm_completed(ReserveDTO dto, RedirectAttributes rttr) {
		log.info("reservation");

		shortTermService.registerReservation(dto);

		rttr.addAttribute("seq", dto.getReserve_seq());
		return "redirect:/short/shortTerm_payment_completed";
	}

}