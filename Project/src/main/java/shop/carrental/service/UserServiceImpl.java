package shop.carrental.service;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import shop.carrental.domain.UserDTO;
import shop.carrental.mappers.UserMapper;

@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

	private UserMapper userMapper;

	@Override
	public boolean login(UserDTO dto) {
		log.info("login");
		return userMapper.login(dto) == 1 ? true : false;
	}

	@Override
	public void signUp(UserDTO dto) {
		log.info("signUp");

		userMapper.signUp(dto);
	}

	@Override
	public UserDTO information(UserDTO dto) {
		return userMapper.information(dto);
	}

}
