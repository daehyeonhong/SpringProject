package shop.carrental.domain;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReserveDTO {

	private Long reserve_seq, branch_seq, short_car_seq, insurance_seq;

	private String users_id;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date start_date, end_date, reserve_reg_date, reserve_update;

	private int total_amount, coupon, payment_amount;

}