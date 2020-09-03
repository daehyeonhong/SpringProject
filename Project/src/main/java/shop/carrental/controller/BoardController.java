package shop.carrental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {

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

	public void notice() {
		log.info("notice");
		log.info("정상 접근 성공!");
	}

	@RequestMapping("consultation/customer")
	public String customer() {
		log.info("customer");
		log.info("정상 접근 성공!");
		return "board/consultation/customer";
	}

	@RequestMapping("consultation/info")
	public String info() {
		log.info("info");
		log.info("정상 접근 성공!");
		return "board/consultation/info";
	}

	@RequestMapping("consultation/rent")
	public String rent() {
		log.info("rent");
		log.info("정상 접근 성공!");
		return "board/consultation/rent";
	}

	@RequestMapping("form/applicationForm")
	public String applicationForm() {
		log.info("applicationForm");
		log.info("정상 접근 성공!");
		return "board/form/applicationForm";
	}

	@RequestMapping("form/contractForm")
	public String contractForm() {
		log.info("contractForm");
		log.info("정상 접근 성공!");
		return "board/form/contractForm";
	}

	@RequestMapping("form/handoverForm")
	public String handoverForm() {
		log.info("handoverForm");
		log.info("정상 접근 성공!");
		return "board/form/handoverForm";
	}

	@RequestMapping("form/terminateForm")
	public String terminateForm() {
		log.info("terminateForm");
		log.info("정상 접근 성공!");
		return "board/form/terminateForm";
	}

}