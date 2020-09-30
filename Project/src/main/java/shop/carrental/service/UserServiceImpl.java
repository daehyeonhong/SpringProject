package shop.carrental.service;

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
	public String login(UsersDTO dto) {
		log.info("login");

		return userMapper.check(dto);
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
			model.addAttribute("users", userMapper.information(dto));
		}
		redirectAttributes.addFlashAttribute("result", result ? "success" : "failure");
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@Override
	public String getId(String users_email, RedirectAttributes redirectAttributes) {

		UsersDTO dto = userMapper.getUsers(users_email);
		redirectAttributes.addFlashAttribute("users", dto);
		return dto.getUsers_id();
	}

}
