package shop.carrental.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AppointDTO;
import shop.carrental.service.RentalService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/rental/*")
public class RentalController {

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

		return rentalTermService.registerAppoint(dto, redirectAttributes) ? "redirect:/rental/result"
				: "redirect:" + request.getHeader("Referer");
	}

}