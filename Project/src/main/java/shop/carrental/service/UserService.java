package shop.carrental.service;

import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.UsersDTO;

public interface UserService {

	public void register(UsersDTO dto);

	public UsersDTO information(UsersDTO vo);

	public String login(UsersDTO vo);

	public boolean confirm(UsersDTO vo, RedirectAttributes redirectAttributes, Model model);

	public void logout(HttpSession session);

	public String getId(String users_email, RedirectAttributes redirectAttributes);

}