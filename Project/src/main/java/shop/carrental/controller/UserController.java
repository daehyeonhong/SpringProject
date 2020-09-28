package shop.carrental.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
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
	public void login(HttpSession session) {
		log.info("loginPage");

	}

	@PostMapping("/login")
	public String login(UsersDTO dto, HttpServletRequest request, HttpSession session,
			RedirectAttributes redirectAttributes) {
		log.info("login 시도");

		return userService.login(dto, request, session, redirectAttributes) ? "redirect:/" : "redirect:/user/login";
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

	@GetMapping("/register")
	public void register() {
		log.info("registerPage");
	}

	@PostMapping("/register")
	public String register(UsersDTO dto, RedirectAttributes redirectAttributes) {
		log.info(dto);

		userService.register(dto);

		return "redirect:/user/login";
	}

	@GetMapping("/update")
	public String update() {
		log.info("update");

		return "/user/confirm";
	}

	@PostMapping("/confirm")
	public String confirm(UsersDTO dto, HttpSession session, RedirectAttributes redirectAttributes, Model model) {
		log.info("passwordCheck 시도");

		return userService.confirm(dto, redirectAttributes, model) ? "/user/update" : "redirect:/user/update";
	}

	@ResponseBody
	@PostMapping("/VerifyReCAPTCHA")
	public int verifyReCAPTCHA(HttpServletRequest request) {
		VerifyReCAPTCHA.setSecretKey("6LcN1sIZAAAAAFtcJ6qVR_vmtTltorutmH-NGUvS");
		String gReCAPTCHAResponse = request.getParameter("recaptcha");
		try {
			if (VerifyReCAPTCHA.verify(gReCAPTCHAResponse)) {
				return 0;
			} else {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@GetMapping("/myPage")
	public String myPage(HttpSession session) {
		log.info("myPage");
		return session.getAttribute("users_id") == null ? "/user/login" : "redirect:/user/myPage/general";
	}

	@GetMapping("/myPage/general")
	public void general(Model model) {
		log.info("general");
		model.addAttribute("target", "general");
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

}