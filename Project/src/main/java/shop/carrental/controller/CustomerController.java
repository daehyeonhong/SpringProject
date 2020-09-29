package shop.carrental.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.NoticeDTO;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.service.CustomerService;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/customer/*")
public class CustomerController {

	private CustomerService customerService;

	@GetMapping("/")
	public void basic() {
		log.info("board");
	}

	@GetMapping("/branch")
	public void branch() {
		log.info("branch");
	}

	@GetMapping("/faq")
	public void faq(@ModelAttribute("type") String type, Model model) {
		log.info("faq");

		customerService.listFaq(type, model);
	}

	@GetMapping("/service/general")
	public void general(Model model) {
		log.info("general");

		model.addAttribute("target", "general");
	}

	@GetMapping("/service/rental")
	public void rental(Model model) {
		log.info("rental");
		model.addAttribute("target", "rental");
	}

	@PostMapping("/service/inquiry")
	public String registerInquiry(InquiryDTO dto, RedirectAttributes redirectAttributes) {
		log.info("general");

		customerService.registerInquiry(dto, redirectAttributes);
		return "redirect:/customer/service/general";
	}

	@GetMapping("/service/info")
	public String info(Model model) {
		log.info("info");

		model.addAttribute("target", "info");
		return "customer/service/info";
	}

	@GetMapping("/form/application")
	public String application(Model model) {
		log.info("application");

		model.addAttribute("target", "application");
		return "customer/form/application";
	}

	@GetMapping("/form/contract")
	public String contract(Model model) {
		log.info("contract");

		model.addAttribute("target", "contract");
		return "customer/form/contract";
	}

	@GetMapping("/form/handover")
	public String handover(Model model) {
		log.info("handover");

		model.addAttribute("target", "handover");
		return "customer/form/handover";
	}

	@GetMapping("/form/terminate")
	public String terminate(Model model) {
		log.info("terminate");

		model.addAttribute("target", "terminate");
		return "customer/form/terminate";
	}

	@GetMapping("/notice/list")
	public void noticeList(Criteria criteria, Model model) {
		log.info("noticeList" + criteria);

		customerService.listNotice(criteria, model);
	}

	@GetMapping("/notice/register")
	public void registerNotice(Criteria criteria) {
		log.info("registerNotice" + criteria);
	}

	@PostMapping("/notice/register")
	public String registerNotice(NoticeDTO dto, RedirectAttributes redirectAttributes) {
		log.info("registerNotice" + dto);

		customerService.registerNotice(dto, redirectAttributes);
		return "redirect:/customer/notice/list";
	}

	@GetMapping("/notice/page")
	public void noticePage(@RequestParam("notice_seq") Long seq, @ModelAttribute("criteria") Criteria criteria, Model model) {
		log.info("page");

		customerService.readNotice(seq, criteria, model);
	}

}