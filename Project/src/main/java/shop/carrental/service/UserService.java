package shop.carrental.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.UserDTO;
import shop.carrental.domain.UserVO;

public interface UserService {

	public void register(UserDTO dto);

	public UserVO information(UserVO vo);

	public boolean login(UserVO vo, HttpServletRequest request, HttpSession session,
			RedirectAttributes redirectAttributes);

	public boolean confirm(UserVO vo, RedirectAttributes redirectAttributes, Model model);

	public void logout(HttpSession session);

}