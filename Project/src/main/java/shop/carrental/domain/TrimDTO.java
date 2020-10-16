package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TrimDTO {

	private Long trim_seq, car_seq;

	private int price;

}