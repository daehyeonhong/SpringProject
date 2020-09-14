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
		log.info("정상 접근 성공!");
	}

	@GetMapping("/login")
	public void login() {
		log.info("loginPage");
		log.info("정상 접근 성공!");
	}

	@PostMapping("/login")
	public String login(UserVO vo, HttpSession session, RedirectAttributes redirectAttributes) {
		log.info("login 시도");

		return userService.login(vo, session, redirectAttributes) ? "redirect:/" : "redirect:/user/login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		log.info("logout 시도");

		session.invalidate();
		return "redirect:/user/login";
	}

	@GetMapping("/agreement")
	public void agreement() {
		log.info("agreement");
		log.info("정상 접근 성공!");
	}

	@GetMapping("/signUp")
	public void signUp() {
		log.info("signUpPage");
		log.info("정상 접근 성공!");
	}

	@PostMapping("/signUp")
	public String signUp(UserDTO dto, RedirectAttributes redirectAttributes) {
		log.info(dto);

		userService.signUp(dto);

		return "redirect:/user/login";
	}

	@GetMapping("/updateInfo")
	public String updateInfo() {
		log.info("updateInfo");
		log.info("정상 접근 성공!");
		return "/user/confirm";
	}

	@PostMapping("/confirm")
	public String confirm(UserVO vo, HttpSession session, RedirectAttributes redirectAttributes, Model model) {
		log.info("passwordCheck 시도");

		return userService.confirm(vo, redirectAttributes, model) ? "/user/updateInfo" : "redirect:/user/updateInfo";
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

}