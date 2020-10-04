package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNumber, amount;
	private String searchBy, keyword;

	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNumber, int amount) {
		this.pageNumber = pageNumber;
		this.amount = amount;
	}

	public String[] getSearchByArray() {
		String[] searchByArray;
		searchByArray = searchBy == null ? new String[] {} : searchBy.split("");
		System.out.println(searchByArray);
		return searchByArray;
	}

}