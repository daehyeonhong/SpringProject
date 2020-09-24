package shop.carrental.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageVO {

	private int startPage, endPage, total, realEnd;

	private final int FINAL = 10;

	private boolean previous, next;

	private Criteria criteria;

	public PageVO(Criteria criteria, int total) {
		this.criteria = criteria;
		this.total = total;
		this.endPage = (int) Math.ceil(criteria.getPageNumber() / 10.0) * FINAL;
		this.startPage = this.endPage - 9;
		this.realEnd = (int) (Math.ceil((this.total * 1.0) / criteria.getAmount()));
		this.endPage = (this.realEnd <= this.endPage) ? this.endPage = this.realEnd : this.endPage;
		this.previous = this.startPage > 1;
		this.next = this.endPage < this.realEnd;
	}

}