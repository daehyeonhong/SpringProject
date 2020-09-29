package shop.carrental.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
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
import shop.carrental.domain.AppointDTO;
import shop.carrental.domain.AppointVO;
import shop.carrental.service.RentalService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/rental/*")
public class RentalController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	private RentalService rentalTermService;

	@GetMapping("/")
	public String basic() {
		log.info("rental");
		return "/rental/reservation";
	}

	/* ShortTerm */
	@GetMapping("/reservation")
	public void reservation() {
		log.info("reservation");
	}

	/* LongTerm */
	@GetMapping("/appoint")
	public void appoint() {
		log.info("appoint");
	}

	@PostMapping("/appoint")
	public String appoint(AppointDTO dto, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		log.info("appoint");

		// Long appoint_seq =rentalTermService.getLongnextseq();

		// dto.setAppoint_seq(appoint_seq);

		log.info(dto);
		Long resultAppoint = rentalTermService.registerAppoint(dto, redirectAttributes);
		Long appoint_seq = dto.getAppoint_seq();

		// Long resultAppoint = dto.getAppoint_seq();
		log.info("resultAppoint:--------------------------> " + resultAppoint);
		log.info("resultAppoint:--------------------------> " + appoint_seq);

		redirectAttributes.addAttribute("appoint_seq", appoint_seq);

		/*
		 * return rentalTermService.registerAppoint(dto, redirectAttributes) ?
		 * "redirect:/rental/result" : "redirect:" + request.getHeader("Referer");
		 */
		return resultAppoint > 0 ? "redirect:/rental/result" : "redirect:" + request.getHeader("Referer");
	}

	@GetMapping("/result")
	public void confirm(AppointDTO dto, Model model, RedirectAttributes redirectAttributes) {
		log.info(dto);
		log.info(redirectAttributes.getFlashAttributes().toString());
		AppointVO appoint = rentalTermService.getAppointInfo(dto);
		model.addAttribute("appointInfo", appoint);
	}

}