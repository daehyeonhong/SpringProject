package shop.carrental.domain;

import lombok.Setter;
import lombok.ToString;
import lombok.Getter;

@Getter
@Setter
@ToString
public class CarDTO {

	private Long car_seq, segment_seq, fuel_seq, mfgco_seq, car_year, img_seq;

	private String car_model, car_desc;

}