package shop.carrental.domain;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
public class TrimDTO {

	private Long seq, car_seq;

	private String name;

	private int price;

}