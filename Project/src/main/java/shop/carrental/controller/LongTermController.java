package shop.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.service.LongTermService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/long/*")
public class LongTermController {

	private LongTermService longTermService;

	@GetMapping("/")
	public String basic() {
		log.info("long");
		return "/long/list";
	}

	@GetMapping("/detail")
	public void detail() {
		log.info("detail");
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
	public void list() {
		log.info("list");
	}

}