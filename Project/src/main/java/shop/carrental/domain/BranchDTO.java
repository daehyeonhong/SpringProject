package shop.carrental.domain;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
public class BranchDTO {

	private Long branch_seq;

	private String branch_name, branch_phone, branch_address, gps, gps2;

	private int maintenance, electric, branch_type;

}