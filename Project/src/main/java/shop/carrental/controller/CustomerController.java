package shop.carrental.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
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

	@RequestMapping("/")
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

	@RequestMapping("/consultation/customer")
	public String customer(Model model) {
		log.info("customer");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "customer");
		return "customer/consultation/customer";
	}

	@RequestMapping("/consultation/info")
	public String info(Model model) {
		log.info("info");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "info");
		return "customer/consultation/info";
	}

	@RequestMapping("/consultation/rent")
	public String rent(Model model) {
		log.info("rent");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "rent");
		return "customer/consultation/rent";
	}

	@RequestMapping("/form/applicationForm")
	public String applicationForm(Model model) {
		log.info("applicationForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "applicationForm");
		return "customer/form/applicationForm";
	}

	@RequestMapping("/form/contractForm")
	public String contractForm(Model model) {
		log.info("contractForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "contractForm");
		return "customer/form/contractForm";
	}

	@RequestMapping("/form/handoverForm")
	public String handoverForm(Model model) {
		log.info("handoverForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "handoverForm");
		return "customer/form/handoverForm";
	}

	@RequestMapping("/form/terminateForm")
	public String terminateForm(Model model) {
		log.info("terminateForm");
		log.info("정상 접근 성공!");
		model.addAttribute("target", "terminateForm");
		return "customer/form/terminateForm";
	}

	@GetMapping("/notice")
	public void notice(@RequestParam("pageNumber") Integer pageNumber, Model model) {
		log.info("notice");
		MultiValueMap<String, Object> map = noticeService.getNoticeList(pageNumber);
		model.addAttribute("noticeList", "");
	}

	@GetMapping("/noticeDetail")
	public void noticeDetail(@RequestParam("seq") Long seq, Model model) {
		log.info("noticeDetail");

		model.addAttribute("notice", noticeService.getNoticeDetail(seq));
	}

	@GetMapping("/noticeSearch")
	public void noticeSearch(@RequestParam("searchBy") String searchBy, @RequestParam("keyword") String keyword,
			Model model) {
		HashMap<String, String> map = new HashMap<String, String>();
		searchBy = searchBy.trim();
		keyword = keyword.trim();
		log.info(searchBy);
		log.info(keyword);

		if (searchBy == null || keyword.length() == 0) {
			log.info("noticeSearch Error");
			model.addAttribute("result", "failure");
		} else {
			map.put("searchBy", searchBy);
			map.put("keyword", keyword);
			log.info("noticeSearch Success");
			List<NoticeDTO> noticeSearchResult = noticeService.getNoticeSearchList(map);
			log.info("noticeSearch Result: " + noticeSearchResult);
			model.addAttribute("result", "success");
			model.addAttribute("searchResult", noticeSearchResult);
		}
	}

}