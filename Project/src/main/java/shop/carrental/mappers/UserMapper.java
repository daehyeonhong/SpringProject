package shop.carrental.mappers;

import shop.carrental.domain.UserDTO;
import shop.carrental.domain.UserVO;

public interface UserMapper {

	public boolean register(UserDTO dto);

	public UserVO information(UserVO vo);

	public String check(UserVO vo);

}