package shop.carrental.service;

import shop.carrental.domain.UserDTO;

public interface UserService {

	public boolean login(UserDTO dto);

	public void signUp(UserDTO dto);

	public UserDTO information(UserDTO dto);

}