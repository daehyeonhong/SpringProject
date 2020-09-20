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
import shop.carrental.domain.UserDTO;
import shop.carrental.domain.UserVO;
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
	public void login() {
		log.info("loginPage");
	}

	@PostMapping("/login")
	public String login(UserVO vo, HttpServletRequest request, HttpSession session,
			RedirectAttributes redirectAttributes) {
		log.info("login 시도");

		return userService.login(vo, request, session, redirectAttributes) ? "redirect:/" : "redirect:/user/login";
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
	public String register(UserDTO dto, RedirectAttributes redirectAttributes) {
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
	public String confirm(UserVO vo, HttpSession session, RedirectAttributes redirectAttributes, Model model) {
		log.info("passwordCheck 시도");

		return userService.confirm(vo, redirectAttributes, model) ? "/user/update" : "redirect:/user/update";
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
	public void myPage() {
		log.info("myPage");

	}

}