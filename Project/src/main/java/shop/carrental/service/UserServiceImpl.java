package shop.carrental.service;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.domain.UsersDTO;
import shop.carrental.mappers.GeneralMapper;
import shop.carrental.mappers.UserMapper;

@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

	private UserMapper userMapper;
	private GeneralMapper generalMapper;

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
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@Override
	public String getId(String users_email, RedirectAttributes redirectAttributes) {

		UsersDTO dto = userMapper.getUsers(users_email);
		redirectAttributes.addFlashAttribute("users", dto);
		return dto.getUsers_id();
	}

	@Override
	public List<InquiryDTO> listInquiry(Criteria criteria) {
		log.info("listInquiry" + criteria);

		return generalMapper.listInquiry(criteria);
	}

	@Override
	public int total(Criteria criteria) {
		log.info("countInquiry");

		return generalMapper.total(criteria);
	}

	@Override
	public String getEmail(String users_id) {
		log.info("getEmail" + users_id);

		return userMapper.getEmail(users_id);
	}

	@Override
	public Boolean checkNickname(String users_nickname) {
		log.info("checkNickname" + users_nickname);

		return userMapper.checkNickname(users_nickname) == 0;
	}

}
