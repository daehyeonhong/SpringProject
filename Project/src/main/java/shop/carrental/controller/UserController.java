package shop.carrental.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.annotations.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.PageVO;
import shop.carrental.domain.UsersDTO;
import shop.carrental.service.UserService;
import shop.carrental.util.VerifyReCAPTCHA;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/user/*")
public class UserController {

	private UserService userService;

	@GetMapping("/")
	public void basic() {
		log.info("user");
	}

	@GetMapping("/login")
	public String login(HttpSession session) {
		log.info("loginPage");

		return session.getAttribute("users_id") == null ? "/user/login" : "redirect:/";
	}

	@PostMapping("/login")
	public String login(UsersDTO dto, HttpServletRequest request, HttpSession session,
			RedirectAttributes redirectAttributes) {
		log.info("login 시도");

		String users_name = userService.login(dto);

		boolean result = users_name != null;

		if (result) {
			session.setAttribute("users_id", dto.getUsers_id());
			session.setAttribute("users_name", users_name);
		}

		redirectAttributes.addFlashAttribute("result", result ? "success" : "failure");
		return result ? "redirect:/" : "redirect:/user/login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		log.info("logout 시도");

		userService.logout(session);
		return "redirect:/user/login";
	}

	@GetMapping("/agreement")
	public void agreement() {
		log.info("agreement");
	}

	@GetMapping(value = "/email")
	public void email() {

		log.info("email");
	}

	@GetMapping("/register")
	public void register(@ModelAttribute("users") UsersDTO dto) {
		log.info("registerPage");
		log.info(dto);
	}

	@PostMapping("/register")
	public String register(UsersDTO dto, RedirectAttributes redirectAttributes) {
		log.info(dto);

		userService.register(dto);

		return "redirect:/user/login";
	}

	@GetMapping("/update")
	public String update(HttpSession session, Model model) {
		log.info("update");

		UsersDTO dto = new UsersDTO();

		dto.setUsers_id(session.getAttribute("users_id").toString());

		UsersDTO user = userService.information(dto);

		model.addAttribute("users", user);

		return session.getAttribute("users_id") != null ? "/user/update" : "redirect:/user/login";
	}

	@GetMapping("/myPage")
	public String myPage(HttpSession session) {
		log.info("myPage");
		return session.getAttribute("users_id") == null ? "/user/login" : "redirect:/user/myPage/general";
	}

	@GetMapping("/myPage/general")
	public void general(Criteria criteria, Model model, HttpSession session, @Param("inquiry_type") int inquiry_type) {
		log.info("general");
		String users_id = session.getAttribute("users_id").toString();
		criteria.setSearchBy(Integer.toString(inquiry_type));
		criteria.setUsers_id(users_id);
		int total = userService.total(criteria);
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		model.addAttribute("generalList", userService.listInquiry(criteria));
	}

	@GetMapping("/myPage/rental")
	public void rental(Model model) {
		log.info("rental");
		model.addAttribute("target", "rental");
	}

	@GetMapping("/idSearch")
	public void idSearch(HttpSession session) {
		log.info("idSearch");
	}

	@GetMapping("/emailAuthentication")
	public void emailAuthentication(HttpSession session) {
		log.info("emailPage");
	}

	@PostMapping("/emailAuthentication")
	public String idSearch(String users_email, RedirectAttributes redirectAttributes) {
		log.info("email 시도");

		String users_id = userService.getId(users_email, redirectAttributes);
		log.info(users_id);
		return users_id != null ? "/user/idSearch_result" : "redirect:/user/emailAuthentication";
	}

	@GetMapping("/idSearch_result")
	public String idSearch_result(HttpSession session) {
		log.info("idSearch_result");
		return "/user/idSearch_result";
	}

	@GetMapping("/pwdSearch")
	public String pwdSearch(HttpSession session) {
		log.info("pwdSearch");
		return "/user/pwdSearch";
	}

	@GetMapping("/pwdSearch_result")
	public String pwdSearch_result(HttpSession session) {
		log.info("pwdSearch_result");
		return "/user/pwdSearch_result";
	}

	@ResponseBody
	@PostMapping("/VerifyReCAPTCHA")
	public int verifyReCAPTCHA(HttpServletRequest request) {
		VerifyReCAPTCHA.setSecretKey("6LcN1sIZAAAAAFtcJ6qVR_vmtTltorutmH-NGUvS");
		String gReCAPTCHAResponse = request.getParameter("recaptcha");
		try {
			return VerifyReCAPTCHA.verify(gReCAPTCHAResponse) ? 0 : 1;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@ResponseBody
	@GetMapping(value = "/checkNickname/{users_nickname}")
	public ResponseEntity<String> checkNickname(@PathVariable("users_nickname") String users_nickname) {
		log.info("checkNickname");
		return new ResponseEntity<String>(userService.checkNickname(users_nickname) ? "success" : "failure",
				HttpStatus.OK);
	}

}