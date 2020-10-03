package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AmountVO {

	private Long insurance_seq, sc_seq;

	private int nomal_price, fare, payment_amount, total_amount, period, insurance_amount;

	public AmountVO(int nomal_price, int fare, int period) {
	}

}