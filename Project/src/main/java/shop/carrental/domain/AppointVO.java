package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AppointVO {

	private Long appoint_seq, trim_seq, branch_seq;

	private String users_id, branch_name, branch_phone;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date appoint_reg_date, appoint_update, appoint_date;

}