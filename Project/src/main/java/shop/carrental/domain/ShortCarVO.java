package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ShortCarVO {

	private Long sc_seq, trim_seq, branch_seq, img_seq;

	private int dash_cam, back_camera, navigation, sunroof, bluetooth, aux, smart_key, nomal_price, weekend_price,
			car_year;

	private String license_plate, front, mfgco_name, car_model, trim_name, fuel_name, car_desc;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date sc_reg_date, sc_update;

}