package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BranchDTO {

	private Long seq;

	private String name, phone, address, gps;

	int maintenance, electric, type;

}