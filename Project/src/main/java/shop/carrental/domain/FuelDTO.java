package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FuelDTO {

	private Long fuel_seq;

	private String fuel_name, fuel_eng_name;

}