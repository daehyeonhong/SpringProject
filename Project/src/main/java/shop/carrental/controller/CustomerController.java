package shop.carrental.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.PageVO;
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
		log.info("정상 접근 성공!");
	}

	@GetMapping("/branch")
	public void branch() {
		log.info("branch");
		log.info("정상 접근 성공!");
	}

	@GetMapping("/faq")
	public void faq() {
		log.info("faq");

		log.info("정상 접근 성공!");
	}

	@GetMapping("/consultation/customer")
	public String customer(Model model) {
		log.info("customer");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "customer");
		return "customer/consultation/customer";
	}

	@GetMapping("/consultation/info")
	public String info(Model model) {
		log.info("info");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "info");
		return "customer/consultation/info";
	}

	@GetMapping("/consultation/rent")
	public String rent(Model model) {
		log.info("rent");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "rent");
		return "customer/consultation/rent";
	}

	@GetMapping("/form/applicationForm")
	public String applicationForm(Model model) {
		log.info("applicationForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "applicationForm");
		return "customer/form/applicationForm";
	}

	@GetMapping("/form/contractForm")
	public String contractForm(Model model) {
		log.info("contractForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "contractForm");
		return "customer/form/contractForm";
	}

	@GetMapping("/form/handoverForm")
	public String handoverForm(Model model) {
		log.info("handoverForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "handoverForm");
		return "customer/form/handoverForm";
	}

	@GetMapping("/form/terminateForm")
	public String terminateForm(Model model) {
		log.info("terminateForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "terminateForm");
		return "customer/form/terminateForm";
	}

	@GetMapping("/notice")
	public void noticeList(Criteria criteria, Model model) {
		log.info("noticeList" + criteria);

		model.addAttribute("noticeList", noticeService.getNoticeList(criteria));

		int total = noticeService.getTotal(criteria);
		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageVO(criteria, total));
	}

	@GetMapping("/noticeDetail")
	public void noticeDetail(@RequestParam("notice_seq") Long notice_seq, @ModelAttribute("criteria") Criteria criteria,
			Model model) {
		log.info("get");

		noticeService.read(notice_seq, criteria, model);
	}

	/*
	 * @GetMapping("/noticeSearch") public void
	 * noticeSearch(@RequestParam("searchBy") String
	 * searchBy, @RequestParam("keyword") String keyword, Model model) {
	 * HashMap<String, String> map = new HashMap<String, String>(); searchBy =
	 * searchBy.trim(); keyword = keyword.trim(); log.info(searchBy);
	 * log.info(keyword);
	 * 
	 * if (searchBy == null || keyword.length() == 0) {
	 * log.info("noticeSearch Error"); model.addAttribute("result", "failure"); }
	 * else { map.put("searchBy", searchBy); map.put("keyword", keyword);
	 * log.info("noticeSearch Success"); List<NoticeDTO> noticeSearchResult =
	 * noticeService.search(map); log.info("noticeSearch Result: " +
	 * noticeSearchResult); model.addAttribute("result", "success");
	 * model.addAttribute("searchResult", noticeSearchResult); } }
	 */

}