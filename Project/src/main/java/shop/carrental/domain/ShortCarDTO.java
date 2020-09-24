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

	private Long seq, trim_seq, branch_seq;

	private String license_plate;

	int dash_cam, back_camera, navigation, sunroof, bluetooth, aux, smart_key, nomal_price, weekend_price;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date register_date, update_date;

}