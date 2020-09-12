package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageDTO {

	private int startPage, endPage, total;

	private boolean previous, next;

	private Criteria criteria;

	public PageDTO(Criteria criteria, int total) {
		this.criteria = criteria;
		this.total = total;

		this.endPage = (int) Math.ceil(criteria.getPageNumber() / 10.0) * 10;

		this.startPage = this.endPage - 9;

		int realEnd = (int) (Math.ceil((this.total * 1.0) / criteria.getAmount()));

		this.endPage = (realEnd <= this.endPage) ? this.endPage = realEnd : this.endPage;

		this.previous = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}

}