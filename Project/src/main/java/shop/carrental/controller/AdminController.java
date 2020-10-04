package shop.carrental.controller;

import javax.servlet.http.HttpSession;

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
import shop.carrental.domain.AdminVO;
import shop.carrental.domain.AnswerDTO;
import shop.carrental.domain.BranchDTO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;
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

	// ***Index***//

	@GetMapping("/index")
	public String indexPage(HttpSession session) {
		log.info("Get: indexPage");
		return session.getAttribute("adminEmail")!=null?null:"redirect:/admin/login";
	}

	@GetMapping("/register")
	public void registerPage() {
		log.info("Get: registerPage");
	}

	@PostMapping("/register")
	public String register(AdminVO vo) {
		log.info("Controller register: " + vo);
		adminService.register(vo);
		return "redirect:/admin/login";
	}

	@GetMapping("/login")
	public void loginPage() {
		log.info("Get: loginPage");
	}

	@PostMapping("/login")
	public String login(AdminVO vo, HttpSession session) {
		if (vo.getEmail() == null || vo.getEmail().equals("")) {
			throw new IllegalArgumentException("Must write your Email");
		}

		AdminVO admin = adminService.getAdmin(vo);
		if (admin != null) {
			session.setAttribute("adminEmail", admin.getEmail());
			session.setAttribute("adminName", admin.getFirstName());
			log.info("Session Email: " + admin.getEmail());
			log.info("Session Name: " + admin.getFirstName());
			return "redirect:/admin/index";
		} else {
			return "redirect:/admin/login";
		}
	}

	@GetMapping("/logout")
	public String logoutPage(HttpSession session) {
		log.info("Get: logoutPage");
		session.invalidate();
		return "redirect:/admin/login";
	}
	
	@GetMapping("/loginAdmin")
	public void loginAdminPage() {
		log.info("Get: loginAdmin");
	}
	
	@PostMapping("/loginFail")
	public String loginFail(RedirectAttributes rttr) {
		log.info("Controller loginFail");
		rttr.addFlashAttribute("error",1);
		return "redirect:/admin/index";
	}

	// ***Ticket***//

	@GetMapping("/ticket/list")
	public String ticketListPage(Criteria cri, Model model,HttpSession session) {
		log.info("Get: ticketListPage");
		model.addAttribute("ticketList",ticketService.getTicketListWithPaging(cri));
		
		int total = ticketService.getTotal(cri);// 페이지번호, 페이당 건수로 조회
		log.info("total:" + total);

		log.info("PageVO:" + new PageVO(cri, total));
		model.addAttribute("pageMaker", new PageVO(cri, total));
		
		return session.getAttribute("adminEmail")!=null?null:"redirect:/admin/login";
	}

	@GetMapping("/ticket/page")
	public void getTicketPage(@RequestParam("inquiry_seq") Long inquiry_seq, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("Get: getTicketPage");
		model.addAttribute("ticketPage", ticketService.getTicketPage(inquiry_seq, cri));
		model.addAttribute("pageMaker", new PageVO(cri, ticketService.getTotal(cri)));
	}
	
	@PostMapping("/ticket/answer")
	public String replyTicket(AnswerDTO dto,InquiryDTO inquiryDto) {
		log.info("replyTicket");
		ticketService.replyTicket(dto,inquiryDto);
		return "redirect:/admin/ticket/list";
	}

	//***shortcar***//
	
	@GetMapping("/shortcar/register")
	public String registerShortCar(HttpSession session) {
		log.info("/shortcar/register");
		return session.getAttribute("adminEmail")!=null?null:"redirect:/admin/login";
	}

	@PostMapping("/shortcar/register")
	public String registerShortCar(ShortCarDTO dto, RedirectAttributes redirectAttributes) {
		log.info("RegisterShortCar");
		adminService.registerShortCar(dto);
		//int seq = adminService.registerShortCar(dto);
		//redirectAttributes.addFlashAttribute("result", seq);				delete
		
		return "redirect:/admin/index";
	}
	
	//***branch***//
	
	@GetMapping("/branch/list")
	public String branchList(Criteria cri,Model model,HttpSession session) {
		log.info("Get: branchList");
		model.addAttribute("branchList", adminService.getBranchList(cri));
		
		int total = adminService.getTotalBranchCount(cri);// 페이지번호, 페이당 건수로 조회
		log.info("total:" + total);

		log.info("PageVO:" + new PageVO(cri, total));
		model.addAttribute("pageMaker", new PageVO(cri, total));
		return session.getAttribute("adminEmail")!=null?null:"redirect:/admin/login";
	}
	
	@GetMapping("/branch/register")
	public String branchRegisterPage(HttpSession session) {
		log.info("Get: branchRegisterPage");
		return session.getAttribute("adminEmail")!=null?null:"redirect:/admin/login";
	}
	
	@PostMapping("/branch/register")
	public String registerBranch(BranchDTO dto) {
		log.info("registerBranch");
		adminService.registerBranch(dto);
		return "redirect:/admin/branch/list";
	}
}