package shop.carrental.mappers;

import java.util.List;
import shop.carrental.domain.AppointVO;
import shop.carrental.domain.ReserveVO;
import shop.carrental.domain.UsersDTO;

public interface UserMapper {

	public boolean register(UsersDTO dto);

	public UsersDTO information(UsersDTO dto);

	public String check(UsersDTO dto);

	public UsersDTO getUsers(String users_email);

	public String getEmail(String users_id);

	public int checkNickname(String users_nickname);

	public int checkPhone(String users_phone);

	public int checkLicense(String license);

	public int checkId(String users_id);

	public int updatePassword(UsersDTO dto);

	public List<AppointVO> mycar(String users_id);

	public List<ReserveVO> myShortCar(String users_id);

	public void updateUser(UsersDTO dto);

	public int userNicknameCheck(String users_nickname);

	public int userPhoneCheck(String users_phone);

	public int userEmailCheck(String users_email);

	public int userLicenseCheck(String license);

	public int checkLongEmail(String users_email);

}