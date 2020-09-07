package shop.carrental.user.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.user.domain.UserDTO;

@Controller
@RequestMapping("/user/*")
@Log4j
public class UserController {

	@Setter(onMethod_ = @Autowired)
	private UserDTO userDTO;

	@GetMapping("")
	public void basic() {
		log.info("user");
		log.info("정상 접근 성공");
	}

	@GetMapping("login")
	public String login() {
		log.info("login");
		log.info("정상 접근..?");
		return "user/login";
	}

	@PostMapping("login")
	public String loginResult(@ModelAttribute UserDTO dto, Model model, HttpSession session) {
		boolean result = userDTO.login(dto, session);
		String view = "";
		if (result) {
			log.info("login");
			log.info("성공!");
			model.addAttribute("login", "success");
			/* session.setAttribute("sessionId", ""); */
			view = "home";
		} else {
			log.info("login");
			log.info("실패!");
			model.addAttribute("login", "fail");
			view = "user/login";
		}
		return view;
	}

	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		log.info("logout");
		log.info("성공!");
		return "redirect:login";
	}

	@GetMapping("signUp")
	public void signUp() {
		log.info("signUp");
		log.info("정상 접근..?");
	}

	@PostMapping("signUp")
	public String signUpC(@ModelAttribute UserDTO dto) {
		log.info("signUpC");
		log.info("정상 접근..?");
		userDTO.insertUser(dto);
		return "user/login";
	}

}