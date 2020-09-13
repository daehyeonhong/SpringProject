package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNumber;
	private final int AMOUNT = 10;

	private String searchBy, keyword;

	public Criteria() {
		this(1);
	}

	public Criteria(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public String[] getSearchByArray() {
		return searchBy == null ? new String[] {} : searchBy.split("");
	}

}