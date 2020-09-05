package shop.carrental.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.model.UserVO;
import shop.carrental.user.domain.UserDTO;

@Controller
@RequestMapping("/user/*")
@Log4j
public class UserController {

	@Setter(onMethod_ = @Autowired)
	private UserVO vo;

	@RequestMapping("")
	public void basic() {
		log.info("user");
		log.info("정상 접근 성공");
	}

	@RequestMapping("/getAdmin")
	public String getAdmin(@RequestParam("id") String id) {
		log.info("getAdmin 접근");
		log.info("UserVO 정보: " + vo.getAdmin(id));
		return "users/getAdmin";
	}

	@RequestMapping(path = "login", method = RequestMethod.GET)
	public String login() {
		log.info("login");
		log.info("정상 접근..?");
		return "user/login";
	}

	@RequestMapping(path = "login", method = RequestMethod.POST)
	public String loginResult() {
		log.info("login");
		log.info("정상 접근..?");
		return "home";
	}

	@RequestMapping(path = "signUp", method = RequestMethod.GET)
	public void signUp() {
		log.info("signUp");
		log.info("정상 접근..?");
	}

	@RequestMapping(path = "signUp", method = RequestMethod.POST)
	public String signUpC(UserDTO user) {
		log.info("signUpC");
		log.info("정상 접근..?");
		user.insertUser(user);
		return "login";
	}

}