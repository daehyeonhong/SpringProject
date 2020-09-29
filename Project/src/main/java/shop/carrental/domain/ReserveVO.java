package shop.carrental.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReserveVO {

	private Long reserve_seq, sc_seq;

	private String users_id, insurance_name, branch_name, trim_name, car_model;

	private int total_amount, coupon;

	private Date start_date, end_date, reserve_reg_date,reserve_update;

}