package shop.carrental.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import shop.carrental.model.UserVO;

@Controller
@RequestMapping("/users/*")
@Log4j
public class UserController {

	@Setter(onMethod_ = @Autowired)
	private UserVO vo;

	@RequestMapping("")
	public void basic() {
		log.info("users");
		log.info("정상 접근 성공");
	}

	@RequestMapping("/getAdmin")
	public String getAdmin(@RequestParam("id") String id) {
		log.info("getAdmin 접근");
		log.info("UserVO 정보: " + vo.getAdmin(id));
		return "users/getAdmin";
	}

}