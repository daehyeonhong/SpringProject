package shop.carrental.service;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.Criteria;
import shop.carrental.domain.InquiryDTO;
import shop.carrental.domain.ReserveVO;
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
	public String getId(String users_email) {
		UsersDTO dto = userMapper.getUsers(users_email);
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
	public boolean checkNickname(String users_nickname) {
		log.info("checkNickname" + users_nickname);
		return userMapper.checkNickname(users_nickname) == 0;// 일치하는거 없으면 0(false)
	}

	@Override
	public boolean checkPhone(String users_phone) {
		log.info("checkPhone" + users_phone);
		return userMapper.checkPhone(users_phone) == 0;// 일치하는거 없으면 0(false)
	}

	@Override
	public boolean checkLicense(String license) {
		log.info("checkLicense" + license);
		return userMapper.checkLicense(license) == 0;// 일치하는거 없으면 0(false)
	}

	@Override
	public boolean checkId(String users_id) {
		log.info("checkId" + users_id);
		return userMapper.checkId(users_id) == 0;// 일치하는거 없으면 0(false)
	}

	@Override
	public boolean updatePassword(UsersDTO dto) {
		return userMapper.updatePassword(dto) == 1;
	}

	@Override
	public List<AppointVO> mycar(String users_id) {
		// TODO Auto-generated method stub
		return userMapper.mycar(users_id);
	}

	@Override
	public List<ReserveVO> myShortCar(String users_id) {
		// TODO Auto-generated method stub
		return userMapper.myShortCar(users_id);
	}

	@Override
	public void updateUser(UsersDTO dto) {
		log.info("updateUser" + dto);

		userMapper.updateUser(dto);
	}

	@Override
	public int userNicknameCheck(String users_nickname) {
		log.info("userNicknameCheck" + users_nickname);

		return userMapper.userNicknameCheck(users_nickname);
	}

	@Override
	public int userPhoneCheck(String users_phone) {
		log.info("userPhoneCheck" + users_phone);

		return userMapper.userPhoneCheck(users_phone);
	}

	@Override
	public int userEmailCheck(String users_email) {
		log.info("userEmailCheck" + users_email);

		return userMapper.userEmailCheck(users_email);
	}

	@Override
	public int userLicenseCheck(String license) {
		log.info("userLicenseCheck" + license);

		return userMapper.userLicenseCheck(license);

	}

}