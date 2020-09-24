package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CarVO {

	private Long seq;

	private String model, description;

	int year, image_seq, segment_seq, fuel_seq, manufacturer_seq;

}