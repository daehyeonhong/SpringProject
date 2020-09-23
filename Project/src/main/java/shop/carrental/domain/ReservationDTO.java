package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReservationDTO {

	private Long seq;

	private String users_id;
	
	private int branch_seq,short_car_seq,total_amount,reserve,coupon,payment_amount,insuarance_seq;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date start_date,end_date;

}