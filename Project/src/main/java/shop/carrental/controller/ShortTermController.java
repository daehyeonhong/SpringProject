package shop.carrental.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.ReserveDTO;
import shop.carrental.domain.ReserveVO;
import shop.carrental.service.CarService;
import shop.carrental.service.RentalService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/short/*")
public class ShortTermController {

	private RentalService rentalService;
	private CarService carService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
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

	/* detail */
	@GetMapping("/detail")
	public void shortTerm_detailGet(@Param("start_date") Date start_date, @Param("end_date") Date end_date,
			ReserveVO vo, Model model) {
		log.info("::::::::::::::::: " + vo);
		vo.setStart_date(start_date);
		vo.setEnd_date(end_date);
		model.addAttribute("period", rentalService.getPeriod(vo));
		model.addAttribute("car", carService.getDetailCar(vo.getSc_seq()));
		model.addAttribute("insuranceList", rentalService.listInsurance());
		log.info("detail");
	}

	@PostMapping("/detail")
	public String shortTerm_detailPost(ReserveDTO dto, RedirectAttributes rttr) {
		ReserveVO reserveVO = rentalService.registerReserve(dto);
		rttr.addFlashAttribute("reserve", reserveVO);
		return "redirect:/short/reserve";
	}

	@GetMapping("/reserve")
	public void reserve() {
	}

}