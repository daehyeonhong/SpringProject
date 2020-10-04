package shop.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.service.RentalTermService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/rental/*")
public class RentalController {

	private RentalTermService rentalTermService;

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
	@GetMapping("/appointment")
	public void appointment() {
		log.info("appointment");
	}

}