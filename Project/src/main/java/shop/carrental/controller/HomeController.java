package shop.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class HomeController {

	@GetMapping("/")
	public String home() {
		log.info("home");
		return "home";
	}

	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(HomeController.class);
	 * 
	 *//**
		 * Simply selects the home view to render by returning its name.
		 *//*
			 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
			 * home(Locale locale, Model model) {
			 * logger.info("Welcome home! The client locale is {}.", locale);
			 * 
			 * Date date = new Date(); DateFormat dateFormat =
			 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			 * 
			 * String formattedDate = dateFormat.format(date);
			 * 
			 * model.addAttribute("serverTime", formattedDate);
			 * 
			 * return "home"; }
			 */

}