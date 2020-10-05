package shop.carrental.service;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.domain.UsersDTO;

public interface UserService {

	public void register(UsersDTO dto);

	public UsersDTO information(UsersDTO dto);

	public String login(UsersDTO dto);

	public void logout(HttpSession session);

	public String getId(String users_email);

	public List<InquiryDTO> listInquiry(Criteria criteria);

	public int total(Criteria criteria);

	public String getEmail(String users_id);

	public boolean checkNickname(String users_nickname);

	public boolean checkPhone(String users_phone);

	public boolean checkLicense(String license);

	public boolean checkId(String users_id);

	public boolean updatePassword(UsersDTO dto);

}