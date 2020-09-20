package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {

	private Long seq;

	private String id, password, name, nickname, email, phone, license;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date regist_date, birth_date, update_date;

}