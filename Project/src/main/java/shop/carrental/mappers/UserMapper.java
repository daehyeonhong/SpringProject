package shop.carrental.mappers;

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

}