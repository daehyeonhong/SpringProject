package shop.carrental.mappers;

import shop.carrental.domain.UserDTO;

public interface UserMapper {

	public int login(UserDTO dto);

	public boolean signUp(UserDTO dto);

	public UserDTO information(UserDTO dto);

}