package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserDTO {

	private int user_seq, user_age, login_attempts;

	private String id, password, name, nickname, license, phone, email, zipcode, address, extra_address;

	public UserDTO() {
	}

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date regist_date, birth_date, latest_login_date;

}