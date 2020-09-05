package shop.carrental.customerService.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.customerService.domain.NoticeDTO;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {

	private static final int LISTCOUNT = 10;
	private static final int FIRST = 1;

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

	@Setter(onMethod_ = @Autowired)
	NoticeDTO notice;

	@RequestMapping("notice")
	public void notice(@RequestParam("pageNumber") int pageNumber, Model model) {
		List<NoticeDTO> noticeList = notice.noticeList();
		int limit = LISTCOUNT, totalRecord = notice.getListCount(), start = (pageNumber - 1) * limit, index = start + 1;
		int totalPage = totalRecord / limit;
		Math.floor(totalPage);
		totalPage = (totalRecord % limit == 0) ? totalPage : (totalPage + 1);
		int pageLength = LISTCOUNT,
			currentBlock = (pageNumber % pageLength == 0) ? (pageNumber / pageLength) : (pageNumber / pageLength + 1),
			startPage = FIRST + (currentBlock - 1) * pageLength, endPage = startPage + pageLength - 1,
			totalSegment = (totalRecord % (limit * pageLength) == 0) ? (totalRecord / (limit * pageLength)) : (totalRecord / (limit * pageLength) + 1);
		endPage = (endPage > totalPage) ? totalPage : endPage;
		log.info("noticeList");
		log.info("정상 접근 성공!");
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("totalRecord", totalRecord);
		model.addAttribute("currentBlock", currentBlock);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("totalSegment", totalSegment);
	}

	@RequestMapping("noticeDetail")
	public void noticeDetail(@RequestParam("seq") int seq, Model model) {
		NoticeDTO notice = this.notice.noticeDetail(seq);
		log.info("noticeDetail");
		log.info("정상 접근 성공!");
		model.addAttribute("notice", notice);
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