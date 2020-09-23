package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ImageCarDTO {
	private Long seq;
	private String front,rear,left,right;
}
