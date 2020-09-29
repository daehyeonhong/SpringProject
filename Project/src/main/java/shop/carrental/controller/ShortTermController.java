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
		model.addAttribute("branchList", shortTermService.listBranch());
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
	public void shortTerm_detailGet(ShortCarVO vo, Model model) {
		model.addAttribute("car", carService.getDetailCar(vo.getSc_seq()));
		model.addAttribute("insuranceList", shortTermService.listInsurance());
		log.info("detail");
	}

	@PostMapping("/detail")
	public String shortTerm_detailPost(ShortCarVO vo, RedirectAttributes rttr) {

		log.info("detail: " + vo);
		carService.getDetailCar(vo.getSc_seq());
		rttr.addAttribute("result", vo.getTrim_seq());
		return "redirect:/short/shortTerm_payment2";
	}

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

	/*
	 * @GetMapping("/carInfo") public ResponseEntity<CarVO>
	 * getCarInfo(@RequestParam("segment_seq") int seq){
	 * log.info("segment_seq:"+seq);
	 * log.info("carInfo::::::::::"+shortTermService.getCarInfo(1));
	 * if(shortTermService.getCarInfo(seq)!=null) return new
	 * ResponseEntity<CarVO>(shortTermService.getCarInfo(1),HttpStatus.OK); else
	 * return new ResponseEntity<CarVO>(new
	 * CarVO(),HttpStatus.INTERNAL_SERVER_ERROR);
	 * 
	 * }
	 */
	/*
	 * @PostMapping("/shortTerm_payment2") public String shortTerm_payment2post(vo)
	 * { log.info(); }
	 */

	/*
	 * @PostMapping("/register") public ResponseEntity<ReservationDTO>
	 * register(@RequestBody ReservationDTO dto){ log.info(dto); return new
	 * ResponseEntity<ReservationDTO>(dto, HttpStatus.OK);
	 * 
	 * }
	 */

}