package shop.carrental.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(simpleDateFormat, false));
	}

	@RequestMapping("")
	public void basic() {
		log.info("board");
		log.info("정상 접근 성공!");
	}

	public void branch() {
		log.info("branch");
		log.info("정상 접근 성공!");
	}

	public void faq() {
		log.info("faq");
		log.info("정상 접근 성공!");
	}

	@RequestMapping("consultation/customer")
	public String customer(Model model) {
		log.info("customer");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "customer");
		return "board/consultation/customer";
	}

	@RequestMapping("consultation/info")
	public String info(Model model) {
		log.info("info");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "info");
		return "board/consultation/info";
	}

	@RequestMapping("consultation/rent")
	public String rent(Model model) {
		log.info("rent");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "rent");
		return "board/consultation/rent";
	}

	@RequestMapping("form/applicationForm")
	public String applicationForm(Model model) {
		log.info("applicationForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "applicationForm");
		return "board/form/applicationForm";
	}

	@RequestMapping("form/contractForm")
	public String contractForm(Model model) {
		log.info("contractForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "contractForm");
		return "board/form/contractForm";
	}

	@RequestMapping("form/handoverForm")
	public String handoverForm(Model model) {
		log.info("handoverForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "handoverForm");
		return "board/form/handoverForm";
	}

	@RequestMapping("form/terminateForm")
	public String terminateForm(Model model) {
		log.info("terminateForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "terminateForm");
		return "board/form/terminateForm";
	}

}