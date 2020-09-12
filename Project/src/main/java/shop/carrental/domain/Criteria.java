package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private final static int FIRST = 1;

	private final static int LAST = 10;

	private int pageNumber, amount;

	private String searchBy, keyword;

	public Criteria() {
		this(FIRST, LAST);
	}

	public Criteria(int pageNumber, int amount) {
		this.pageNumber = pageNumber;
		this.amount = amount;
	}

	public String[] getSearchByArray() {
		return searchBy == null ? new String[] {} : searchBy.split("");
	}
}