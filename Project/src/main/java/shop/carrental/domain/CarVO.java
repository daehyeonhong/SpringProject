package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CarVO {

	private Long car_seq, trim_seq, img_seq;

	private String car_model, segment_name, fuel_name, mfgco_name, car_desc, trim_name;

	private int car_year, trim_price;

}