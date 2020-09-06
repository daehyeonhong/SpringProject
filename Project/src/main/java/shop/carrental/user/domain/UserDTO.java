package shop.carrental.user.domain;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;
import lombok.Getter;
import lombok.Setter;
import shop.carrental.mapper.UserMapper;

@Component
@Getter
@Setter
public class UserDTO {

	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;

	private int user_seq;
	private String id, password, name, email, phone, birth_date, licence, zipcode, address, address_detail;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date reg_date;

	public void insertUser(UserDTO user) {
		userMapper.insertUser(user);
	}

	public boolean login(UserDTO user, HttpSession session) {
		return userMapper.login(user);
	}

}