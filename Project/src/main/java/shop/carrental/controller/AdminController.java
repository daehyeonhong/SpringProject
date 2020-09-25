package shop.carrental.controller;

import javax.servlet.http.HttpSession;
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
import shop.carrental.domain.AdminVO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.PageVO;
import shop.carrental.domain.ShortCarDTO;
import shop.carrental.service.AdminService;
import shop.carrental.service.TicketService;

@Controller
@RequestMapping("/admin/")
@Log4j
@AllArgsConstructor
public class AdminController {

	private AdminService adminService;
	private TicketService ticketService;

	@GetMapping("/registerShortCar")
	public void registerShortCar() {
		log.info("RegisterShortCar");
	}

	@PostMapping("/registerShortCar")
	public String registerShortCar(ShortCarDTO dto, RedirectAttributes redirectAttributes) {
		log.info("RegisterShortCar");

		adminService.registerShortCar(dto, redirectAttributes);
		return "redirect:/admin/registerShortCar";
	}

	// ***Index***//

	@GetMapping("/index")
	public void home() {
		log.info("Get: index.jsp");
	}

	@GetMapping("/register")
	public void registerPage() {
		log.info("Get: register.jsp");
	}

	@PostMapping("/register")
	public String register(AdminVO vo, RedirectAttributes rttr) {
		log.info("Controller register executed(vo): " + vo);
		adminService.register(vo);
		rttr.addFlashAttribute("email", vo.getEmail());
		return "redirect:/admin/login";
	}

	@GetMapping("/login")
	public void loginPage() {
		log.info("Get: login.jsp");
	}

	@PostMapping("/login")
	public String login(AdminVO vo, HttpSession session) {
		if (vo.getEmail() == null || vo.getEmail().equals("")) {
			throw new IllegalArgumentException("Must write your Email");
		}

		AdminVO admin = adminService.getAdmin(vo);
		if (admin != null) {
			session.setAttribute("adminEmail", admin.getEmail());
			log.info("Session Email: " + admin.getEmail());
			return "redirect:/admin/index";
		} else {
			return "redirect:/admin/login";
		}
	}

	@GetMapping("/logout")
	public void logoutPage() {
		log.info("Get: logout.jsp");
	}

	// ***Ticket***//

	@GetMapping("/ticketList")
	public void ticketList(Criteria cri, Model model) {
		log.info("Controller ticketList executed");
		model.addAttribute("ticketList", ticketService.getTicketListWithPaging(cri));

		int total = ticketService.getTotal(cri);// 페이지번호, 페이당 건수로 조회
		log.info("total:" + total);

		log.info("PageVO:" + new PageVO(cri, total));
		model.addAttribute("pageMaker", new PageVO(cri, total));
	}

	@GetMapping("/ticketPage")
	public void getTicketPage(@RequestParam("tno") Long tno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("Controller ticketPage executed");
		model.addAttribute("ticketPage", ticketService.getTicketPage(tno));
	}

	@GetMapping("/inquiry")
	public void inquiry(Long inquiry_seq, Model model) {
		adminService.readInquiry(inquiry_seq, model);
	}

}