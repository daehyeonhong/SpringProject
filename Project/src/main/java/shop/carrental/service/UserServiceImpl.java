package shop.carrental.service;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.UserDTO;
import shop.carrental.domain.UserVO;
import shop.carrental.mappers.UserMapper;

@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

	private UserMapper userMapper;

	@Override
	public boolean login(UserVO vo, HttpSession session, RedirectAttributes redirectAttributes) {
		log.info("login");
		String name = userMapper.check(vo);

		boolean result = name != null;

		if (result) {
			session.setAttribute("userId", vo.getId());
			session.setAttribute("userName", name);
		}
		redirectAttributes.addFlashAttribute("result", result ? "success" : "failure");
		return result;
	}

	@Override
	public void signUp(UserDTO dto) {
		log.info("signUp");

		userMapper.signUp(dto);
	}

	@Override
	public UserVO information(UserVO vo) {
		return userMapper.information(vo);
	}

	@Override
	public boolean confirm(UserVO vo, RedirectAttributes redirectAttributes, Model model) {
		log.info("confirm");
		boolean result = userMapper.check(vo) != null;
		if (result) {
			model.addAttribute("user", userMapper.information(vo));
		}
		redirectAttributes.addFlashAttribute("result", result ? "success" : "failure");
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
