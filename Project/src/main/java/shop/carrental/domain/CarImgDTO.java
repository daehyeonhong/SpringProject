package shop.carrental.domain;

import lombok.ToString;
import lombok.Setter;
import lombok.Getter;

@Getter
@Setter
@ToString
public class CarImgDTO {

	private Long car_img_seq;

	private String front, rear, left, right;

}