package shop.carrental.domain;

import lombok.ToString;
import lombok.Setter;
import lombok.Getter;

@Getter
@Setter
@ToString
public class AdminVO {

	private String firstName;
	private String lastName;
	private String email;
	private String password;
}