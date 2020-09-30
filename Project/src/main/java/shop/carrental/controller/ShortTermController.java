package shop.carrental.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;
import shop.carrental.service.CarService;
import shop.carrental.service.RentalService;
import shop.carrental.service.ShortTermService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/short/*")
public class ShortTermController {

	private ShortTermService shortTermService;
	private RentalService rentalService;
	private CarService carService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/DD");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@GetMapping("/")
	public String basic() {
		log.info("short");
		return "/short/listInland";
	}

	/* shortTerm_inland */
	@GetMapping("/listInland")
	public void listInland(Model model) {
		log.info("::::::::::shortTerm");
		model.addAttribute("branchList", rentalService.listBranch());
	}

	/* asd */

	@PostMapping("/shortTerm_inland")
	public String shortTerm(ReserveVO vo, RedirectAttributes rttr) {

		log.info("shortTerm_inland:" + vo);

		/* shortTermService.shortTerm(vo); */
		rttr.addAttribute("result", vo.getReserve_seq());
		return "redirect:/short/detail";
	}

	/* shortTerm_jeju */
	@GetMapping("/shortTerm_jeju")
	public void shortTerm_j(ReserveVO vo, Model model) {

		log.info("shortTerm_j");
		model.addAttribute("result", shortTermService.getReserveInfo(vo));
	}

	@PostMapping("/shortTerm_j")
	public String shortTerm_j(ReserveVO vo, RedirectAttributes rttr) {

		log.info("shortTerm_jeju: " + vo);
		/* shortTermService.shortTerm_j(vo); */
		rttr.addAttribute("result", vo.getReserve_seq());
		return "redirect:/short/detail";
	}

	/* detail */
	@GetMapping("/detail")
	public void shortTerm_detailGet(ReserveVO vo, Model model) {
		/* ChronoUnit chronoUnit = */
		log.info("::::::::::::::::: " + vo);
		model.addAttribute("car", carService.getDetailCar(vo.getSc_seq()));
		/* model.addAttribute("insuranceList", shortTermService.listInsurance()); */
		log.info("detail");
	}

	@PostMapping("/detail")
	public String shortTerm_detailPost(ReserveDTO dto, RedirectAttributes rttr) {

		return "redirect:/short/shortTerm_payment2";
	}

	@PostMapping("/shortTerm_payment2")
	public String stReserPost(ReserveDTO dto, RedirectAttributes rttr) {
		log.info("reserve");

		shortTermService.registerReserve(dto);

		rttr.addAttribute("seq", dto.getReserve_seq());
		return "redirect:/short/shortTerm_payment_completed";
	}

	/* shortTerm_payment_completed */
	@GetMapping("/shortTerm_payment_completed")
	public void shortTerm_completed(ReserveVO vo, Model model) {
		model.addAttribute("ReserveInfo", shortTermService.getReserveInfo(vo));
		log.info("shortTerm_payment_completed");
	}

	@PostMapping("/shortTerm_payment_completed")
	public String shortTerm_completed(ReserveDTO dto, RedirectAttributes rttr) {
		log.info("reserve");

		shortTermService.registerReserve(dto);

		rttr.addAttribute("seq", dto.getReserve_seq());
		return "redirect:/short/shortTerm_payment_completed";
	}

}