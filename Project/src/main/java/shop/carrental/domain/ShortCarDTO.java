package shop.carrental.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ShortCarDTO {

	private Long sc_seq;

	private String license_plate;
	
	private int dash_cam, back_camera, navigation, sunroof, bluetooth, aux, smart_key, nomal_price, weekend_price,trim_seq,branch_seq;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date sc_reg_date, sc_update;

}