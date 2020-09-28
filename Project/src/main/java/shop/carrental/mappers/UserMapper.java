package shop.carrental.mappers;

import shop.carrental.domain.UsersDTO;

public interface UserMapper {

	public boolean register(UsersDTO dto);

	public UsersDTO information(UsersDTO dto);

	public String check(UsersDTO dto);

	public UsersDTO getUsers(String users_email);

}