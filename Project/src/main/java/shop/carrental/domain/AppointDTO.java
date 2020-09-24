package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AppointDTO {

	private Long appoint_seq, trim_seq, branch_seq;

	private String users_id;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date appoint_reg_date, appoint_update, appoint_date;

}