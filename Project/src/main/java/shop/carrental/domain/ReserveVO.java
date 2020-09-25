package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReserveVO {

	private Long reserve_seq;

	private String users_id, insurance_name, branch_name, trim_name, car_model;

	private int total_amount, coupon;

}