package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AmountVO {

	private Integer total, tax_free, vat, point, discount;

}