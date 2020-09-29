package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InsuranceDTO {

	private Long insurance_seq;

	private String insurance_name;

	private int fare, deductible;

}