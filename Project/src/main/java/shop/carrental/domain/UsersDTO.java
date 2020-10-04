package shop.carrental.domain;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UsersDTO {

	private Long users_seq;

	private String users_id, password, users_name, users_nickname, users_email, users_phone, license;

	private Date birth_date, users_reg_date, users_update;

}