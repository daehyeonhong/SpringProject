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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;
import shop.carrental.service.NoticeService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/customer/*")
public class CustomerController {

	private NoticeService noticeService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(simpleDateFormat, false));
	}

	@GetMapping("/")
	public void basic() {
		log.info("board");
	}

	@GetMapping("/branch")
	public void branch(@Param("type") String type, Model model) {
		log.info("branch");
		model.addAttribute("type", type == null ? "short" : type);
	}

	@GetMapping("/faq")
	public void faq() {
		log.info("faq");
	}

	@GetMapping("/consultation/customer")
	public String customer(Model model) {
		log.info("customer");

		model.addAttribute("target", "customer");
		return "customer/consultation/customer";
	}

	@GetMapping("/consultation/info")
	public String info(Model model) {
		log.info("info");

		model.addAttribute("target", "info");
		return "customer/consultation/info";
	}

	@GetMapping("/consultation/rent")
	public String rent(Model model) {
		log.info("rent");

		model.addAttribute("target", "rent");
		return "customer/consultation/rent";
	}

	@GetMapping("/form/applicationForm")
	public String applicationForm(Model model) {
		log.info("applicationForm");

		model.addAttribute("target", "applicationForm");
		return "customer/form/applicationForm";
	}

	@GetMapping("/form/contractForm")
	public String contractForm(Model model) {
		log.info("contractForm");

		model.addAttribute("target", "contractForm");
		return "customer/form/contractForm";
	}

	@GetMapping("/form/handoverForm")
	public String handoverForm(Model model) {
		log.info("handoverForm");

		model.addAttribute("target", "handoverForm");
		return "customer/form/handoverForm";
	}

	@GetMapping("/form/terminateForm")
	public String terminateForm(Model model) {
		log.info("terminateForm");

		model.addAttribute("target", "terminateForm");
		return "customer/form/terminateForm";
	}

	@GetMapping("/notice/list")
	public void noticeList(Criteria criteria, Model model) {
		log.info("noticeList" + criteria);

		noticeService.list(criteria, model);
	}

	@GetMapping("/notice/register")
	public void registerNotice(Criteria criteria, Model model) {
		log.info("registerNotice" + criteria);
	}

	@PostMapping("/notice/register")
	public String registerNotice(NoticeDTO dto, RedirectAttributes redirectAttributes) {
		log.info("registerNotice" + dto);

		noticeService.register(dto, redirectAttributes);
		return "redirect:/customer/notice/list";
	}

	@GetMapping("/notice/get")
	public void noticeDetail(@RequestParam("seq") Long seq, @ModelAttribute("criteria") Criteria criteria,
			Model model) {
		log.info("get");

		noticeService.read(seq, criteria, model);
	}

}