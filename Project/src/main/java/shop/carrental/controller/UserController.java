package shop.carrental.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.annotations.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.PageVO;
import shop.carrental.domain.ReserveVO;
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

	@PostMapping(value = "/email")
	public String email(UsersDTO dto, RedirectAttributes rttr) {
		log.info("email" + dto);

		rttr.addFlashAttribute("users", dto);
		return "redirect:/user/register";
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
	public String update(HttpSession session, Model model) {
		log.info("update");

		UsersDTO dto = new UsersDTO();

		dto.setUsers_id(session.getAttribute("users_id").toString());

		UsersDTO user = userService.information(dto);

		model.addAttribute("users", user);

		return session.getAttribute("users_id") != null ? "/user/update" : "redirect:/user/login";
	}

	@PostMapping("/update")
	public String updateUser(UsersDTO dto, HttpSession session) {
		log.info("updateUser");

		dto.setUsers_id(session.getAttribute("users_id").toString());

		userService.updateUser(dto);

		return "redirect:/";
	}

	@ResponseBody
	@GetMapping("/user/nicknameCheck")
	public int nicknameCheck(@RequestParam("users_nickname") String users_nickname) {
		log.info("nicknameCheck");

		return userService.userNicknameCheck(users_nickname);
	}

	@ResponseBody
	@GetMapping("/user/phoneCheck")
	public int phoneCheck(@RequestParam("users_phone") String users_phone) {
		log.info("phoneCheck");

		return userService.userPhoneCheck(users_phone);
	}

	@ResponseBody
	@GetMapping("/user/emailCheck")
	public int emailCheck(@RequestParam("users_email") String users_email) {
		log.info("emailCheck");

		return userService.userEmailCheck(users_email);
	}

	@ResponseBody
	@GetMapping("/user/licenseCheck")
	public int licenseCheck(@RequestParam("license") String license) {
		log.info("licenseCheck");

		return userService.userLicenseCheck(license);
	}

	@GetMapping("/myPage")
	public String myPage(HttpSession session) {
		log.info("myPage");
		return session.getAttribute("users_id") == null ? "/user/login" : "redirect:/user/myPage/general";
	}

	@GetMapping("/myCar")
	public String mycar(HttpSession session, Model model) {
		log.info("mycar");

		String users_id = session.getAttribute("users_id").toString();

		List<AppointVO> user = userService.mycar(users_id);

		model.addAttribute("user", user);
		return "/user/mycar";

	}

	@GetMapping("/myShortCar")
	public String myShortCar(HttpSession session, Model model) {
		log.info("myShortCar");

		String users_id = session.getAttribute("users_id").toString();

		List<ReserveVO> user = userService.myShortCar(users_id);

		model.addAttribute("shortuser", user);
		return "/user/myShortCar";

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
	public void rental(Criteria criteria, Model model) {
		log.info("rental");
		model.addAttribute("target", "rental");
	}

	@GetMapping("/idSearch")
	public void idSearch(HttpSession session) {
		log.info("idSearch");
	}

	@GetMapping("/searchId")
	public void searchId(HttpSession session) {
		log.info("emailPage");
	}

	@PostMapping("/searchId")
	public String searchId(String users_email, RedirectAttributes redirectAttributes) {
		log.info("email 시도");

		String users_id = userService.getId(users_email);
		log.info(users_id);
		redirectAttributes.addFlashAttribute("users_id_result", users_id);
		return "redirect:/user/idSearchResult";
	}

	@GetMapping("/idSearchResult")
	public String idSearchResult() {
		log.info("idSearchResult");
		return "/user/idSearchResult";
	}

	@GetMapping("/pwdSearch")
	public String pwdSearch(HttpSession session) {
		log.info("pwdSearch");
		return "/user/pwdSearch";
	}

	@GetMapping("/searchPwd")
	public void searchPwd() {
		log.info("searchPwd");
	}

	@PostMapping("/searchPwd")
	public String searchPwd(String users_email, RedirectAttributes redirectAttributes) {
		log.info("email 시도");

		String users_id = userService.getId(users_email);
		log.info(users_id);
		redirectAttributes.addFlashAttribute("users_id_result", users_id);
		return users_id != null ? "redirect:/user/changePwd" : "users/searchPwd";
	}

	@GetMapping("/changePwd")
	public void changePwd() {
		log.info("changePwd");
	}

	@PostMapping("/changePwd")
	public String changePwd(UsersDTO dto) {
		log.info("changePwd" + dto);

		boolean result = userService.updatePassword(dto);
		return result ? "redirect:/user/login" : "/user/changePwd";
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

	@ResponseBody
	@GetMapping(value = "/checkPhone/{users_phone}")
	public ResponseEntity<String> checkPhone(@PathVariable("users_phone") String users_phone) {
		log.info("checkPhone");
		return new ResponseEntity<String>(userService.checkPhone(users_phone) ? "success" : "failure", HttpStatus.OK);
	}

	@ResponseBody
	@GetMapping(value = "/checkLicense/{license}")
	public ResponseEntity<String> checkLicense(@PathVariable("license") String license) {
		log.info("checkLicense");
		return new ResponseEntity<String>(userService.checkLicense(license) ? "success" : "failure", HttpStatus.OK);
	}

	@ResponseBody
	@GetMapping(value = "/checkId/{users_id}")
	public ResponseEntity<String> checkId(@PathVariable("users_id") String users_id) {
		log.info("checkId");
		return new ResponseEntity<String>(userService.checkId(users_id) ? "success" : "failure", HttpStatus.OK);
	}

}