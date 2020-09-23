package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AppointmentDTO {

	private Long seq;
	private String users_id;
	private int car_seq, branch_seq;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date register_date, update_date, appointment_date;
}
