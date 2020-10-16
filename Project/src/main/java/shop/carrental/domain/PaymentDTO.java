package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PaymentDTO {

	private int pm_type;

	private Long pm_sc_seq, pm_amount, pm_reg_date;

}