package shop.carrental.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.UsersDTO;
import shop.carrental.mappers.UserMapper;

@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

	private UserMapper userMapper;

	@Override
	public boolean login(UsersDTO dto, HttpServletRequest request, HttpSession session,
			RedirectAttributes redirectAttributes) {
		log.info("login");
		String name = userMapper.check(dto);

		boolean result = name != null;

		if (result) {
			session.setAttribute("userId", dto.getUsers_id());
			session.setAttribute("userName", name);
		}

		redirectAttributes.addFlashAttribute("result", result ? "success" : "failure");
		return result;
	}

	@Override
	public void register(UsersDTO dto) {
		log.info("register");

		userMapper.register(dto);
	}

	@Override
	public UsersDTO information(UsersDTO dto) {
		return userMapper.information(dto);
	}

	@Override
	public boolean confirm(UsersDTO dto, RedirectAttributes redirectAttributes, Model model) {
		log.info("confirm");
		boolean result = userMapper.check(dto) != null;
		if (result) {
			model.addAttribute("user", userMapper.information(dto));
		}
		redirectAttributes.addFlashAttribute("result", result ? "success" : "failure");
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
