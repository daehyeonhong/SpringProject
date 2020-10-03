package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AmountVO {

	private int nomal_price, car_amount, fare, payment_amount, total_amount, period, insurance_amount;

	public AmountVO(int nomal_price, int fare, int period) {
		this.nomal_price = nomal_price;
		this.fare = fare;
		this.period = period;
		this.car_amount = this.nomal_price * this.period;
		this.insurance_amount = this.car_amount * this.fare / 100;
		this.total_amount = this.nomal_price + insurance_amount;
	}

}