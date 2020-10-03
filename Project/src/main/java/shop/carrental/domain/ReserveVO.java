package shop.carrental.domain;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReserveVO {

	private Long reserve_seq, sc_seq;

	private String users_id, insurance_name, branch_name, trim_name, car_model, mfgco_name;

	private int nomal_price, fare, total_amount, coupon, period;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date start_date, end_date, reserve_reg_date, reserve_update;

	AmountVO amount = new AmountVO(nomal_price, fare, period);

}