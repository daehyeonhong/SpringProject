package shop.carrental.mappers;

import shop.carrental.domain.UsersDTO;

public interface UserMapper {

	public boolean register(UsersDTO dto);

	public UsersDTO information(UsersDTO dto);

	public String check(UsersDTO dto);

	public UsersDTO getUsers(String users_email);

	public String getEmail(String users_id);

	public int checkNickname(String users_nickname);

}